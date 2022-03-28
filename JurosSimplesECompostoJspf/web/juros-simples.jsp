<%-- 
    Document   : newjsp
    Created on : 28 de mar. de 2022, 15:52:28
    Author     : Fatec
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String error = null;
    float v = 0, j = 0;
    int p = 0;
    try {
        String p1 = request.getParameter("v");
        String p2 = request.getParameter("j");
        String p3 = request.getParameter("p");
        v = Float.parseFloat(p1);
        j = Float.parseFloat(p2);
        p = Integer.parseInt(p3);
    } catch (Exception e) {
        error = e.getMessage();
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/navbar.jspf" %>
        <%@include file="WEB-INF/jspf/juros-simples.jspf" %>
        <div class="container-fluid">
            <%
                if(error != null){
                    out.println("<span style='color:red'>Erro ao tentar ler parametros</span>");
                } else {
                    out.println(String.format("<h2>Valor futuro %.0f</h2>",v * (1 + (j/100) * p)));
                }
            %>
        </div>
    </body>
</html>
