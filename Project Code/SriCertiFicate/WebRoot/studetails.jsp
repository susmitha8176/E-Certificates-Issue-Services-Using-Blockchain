<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="action.Database"%>
<!--  <!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title></title>
        <meta name="description" content="">
        <meta name="author" content="templatemo">
        <link href="css/styles.css" rel="stylesheet">
    </head>
    <body>
       <div id="container" class="container">
            <div style="width: 1200px;margin: 30px;color: white">
                <center><h1>E-Certificates Issue Services Using BlockChain</h1></center>
            </div>
            <div> 
                <ul class="nav nav-justified">-->
  <!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title></title>
        <meta name="description" content="">
        <meta name="author" content="templatemo">
        <link href="css/studentcer.css" rel = "stylesheet"/>
        <link href="css/regform.css" rel = "stylesheet"/>
    <title>BVRITH Student Services</title>
  </head>
  <body>
   <div class="wrapper col1">
		<div id="header">
			<div id="logo">
				<table style="text-align: center;">
					<tr>
						<td><img src="https://www.noticebard.com/wp-content/uploads/2018/03/b-v-raju.png"
							style="height: 100px; width: 100px;" alt=""></td>
						<td>
							<h1 style="margin-left:190px;font-size:35px">
								<a href="#">BVRIT HYDERABAD College of Engineering For Women</a>
							</h1> <br><span id="project">E-Certificates Issue Services Using BlockChain</span>
						</td>
					</tr>
				</table>
			</div>
			<br class="clear" />
		</div>
	</div>
        
            <div>
                <ul>              
                <li class="active"><a href="stuview.jsp">Home</a></li>
                    <li><a href="studetails.jsp">Profile</a></li>
                    <li><a href="studentcer.jsp">ApplyCertificate</a></li>
                     <li><a href="studntviewcerdetails.jsp">ViewCertificateDetails</a></li>
                    <li><a href="studentrec.jsp">ApplyRecommendationLetter</a></li>
                 <li><a href="studntviewrecdetails.jsp">ViewRecommendationLetter</a></li>
                    <li><a href="index.jsp">Logout</a></li>
               
                </ul>
            </div><br />
            <%
                String name = null, email = null, loc = null,rollno=null, cno = null;
                String n = session.getAttribute("n1").toString();
                String s = session.getAttribute("v").toString();
                Connection con = Database.getConnection();
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery("select * from student where email='" + s + "'");
                if (rs.next()== true) {
                    name = rs.getString("name");
                    System.out.println("Name " + name);
                    email = rs.getString("email");
                    System.out.println("Email " + email);
                    loc = rs.getString("location");
                    System.out.println("Location " + loc);
                    cno = rs.getString("contactno");
                     rollno = rs.getString("rollno");
                    System.out.println("Contact No  " + cno);
                }
            %>
           <!-- <div style="border:1px solid white;width: 600px;height: 400px;margin-left: 320px;background-color:grey;border-radius: 50px;"><br /><br />
                <center>
                        <div style="height: 300px;color: white">
                            <h1>User Details</h1><br/>
                        <label style="font-size: 20px">Name</label>&nbsp;&nbsp;<input type="text" value="<%=name%>" readonly="" style="margin-left: 48px;border: 0px" class="textbox1"/><br /><br />
                        <label style="font-size: 20px">Email ID</label>&nbsp;&nbsp;<input type="text" value="<%=email%>" readonly="" style="margin-left: 25px" class="textbox1"/><br /><br />
                         <label style="font-size: 20px">Roll No</label>&nbsp;&nbsp;<input type="text" value="<%=rollno%>" readonly="" class="textbox1"/><br/><br/>
                        <label style="font-size: 20px">Location</label>&nbsp;&nbsp;<input type="text" value="<%=loc%>" readonly="" style="margin-left: 24px" class="textbox1"/><br /><br />
                        <label style="font-size: 20px">Contact No</label>&nbsp;&nbsp;<input type="text" value="<%=cno%>" readonly="" class="textbox1"/>
                    </div>
                </center>
            </div>
        </div>--> <!-- /container -->
          <div class="container">
    <div class="title"><center><%=name%> Details</center></div>
    <br/>
    <div class="content">
        <div class="user-details">
          <div class="input-box">
            <span class="details">Name</span>
            <input type="text" value="<%=name%>" readonly=""/>
          </div>
          <div class="input-box">
            <span class="details">Email Id</span>
            <input type="text" value="<%=email%>" readonly=""/>
          </div>
           <div class="input-box">
            <span class="details">Roll Number</span>
            <input type="text" value="<%=rollno%>" readonly=""/>
          </div>
          <div class="input-box">
            <span class="details">Location</span>
            <input type="text" value="<%=loc%>" readonly=""/>
          </div>
          <div class="input-box">
            <span class="details">Contact Number</span>
            <input type="text" value="<%=cno%>" readonly=""/>
          </div>
           </div>
  </div>
</div>
        <div>
            <p style="margin-left: 650px;color: red">Copyright � SGS&nbsp;<a href="" style="text-decoration: none;color: red"></a></p>
        </div>
    </body>
</html>