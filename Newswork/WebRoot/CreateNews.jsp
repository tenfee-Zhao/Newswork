<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'NewsBody.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
		<script type="text/javascript" src="js/jquery-1.8.3.js" ></script>
        <script type="text/javascript" src="My97DatePicker/WdatePicker.js" ></script>
        <script type="text/javascript">
			$(function(){
				var bool=true; 
				$('#date').click(WdatePicker);
				var newstitle=$("#newstitle");
				newstitle.blur(function(){
				var texttitle=newstitle.val();
				var title=$("#title");
				if(texttitle==""){
					title.text("标题不能为空");
				}else{
					bool=false;
					title.text("");
				}
				});
				
				var newsbody=$("#newsbody");
				newsbody.blur(function(){
				var textbody=newsbody.val();
				var nbody=$("#nbody");
				if(textbody==""){
					nbody.text("内容不能为空");
				}else{
					bool=false;
					nbody.text("");
				}
				});
				
				$("#btn").click(function(){
					if(newstitle.val()==""||newsbody.val()==""){
						alert("请填写新闻的标题或内容")
						return false;
					}
					return true;
				})
			})
        </script>
  </head>
  
  <body>
  	<div>
  	<div align="left" style="padding-left:100px"><img src="image/news.jpg"></div>
    </div>
    <br>
    <a style="padding-left: 120px" href="index.jsp">首页</a><a style="padding-left: 10px" href="login.jsp">登录</a>
    <hr>
    <div style="height:500px;padding-left: 100px">
    	<div style="width:200px;height:450px;border:1px solid #000;float: left" >
					<br>
					<li><a href="">创建新闻</a>
					<br>
					</div>
    	<div style="width:500px;height:450px;border:1px solid #000;float: left;padding-left:100px ">    
    		
    		<form action="insertnews" method="post">
    			<br>
    			<font>编  &nbsp; &nbsp;  &nbsp; &nbsp;号:   &nbsp; &nbsp;</font><input type="text" name="newsid" style="width: 150px">
    			<br>
    			<br>
    			<font>标 &nbsp; &nbsp;  &nbsp; &nbsp;题:   &nbsp; &nbsp;</font><input type="text" id="newstitle" name="newstitle" style="width: 150px">
    			<span id="title" style="color: red"></span>	
    			<br>
    			<br>
    			<font>类 &nbsp; &nbsp;  &nbsp; &nbsp;型:   &nbsp; &nbsp;</font>
    			<select style="width: 150px" name="newstype">
    				<option value="国际新闻">国际新闻</option>
    				<option value="体育新闻">体育新闻</option>
    				<option value="娱乐新闻">娱乐新闻</option>
    			</select>	
    			<br>
    			<br>
    			<font>来  &nbsp; &nbsp; &nbsp; &nbsp;源:   &nbsp; &nbsp;</font><input type="text" name="newssource" style="width: 150px">
    			<br>
    			<br>
    			<font>作  &nbsp; &nbsp; &nbsp; &nbsp;者:   &nbsp; &nbsp;</font><input type="text" name="newswriter" style="width: 150px">
    			<br>
    			<br>
    			<font>发  &nbsp;布  &nbsp;人:   &nbsp; &nbsp;</font><input type="text" name="newsissuer" style="width: 150px">
    			<br>
    			<br>
    			<font>发布时间:&nbsp; &nbsp;&nbsp;</font><input class="Wdate" type="text" name="newsdate" id="date" style="width: 150px">
    			<br>
    			<br>
    			<font>关  &nbsp; 键 &nbsp;字:   &nbsp;  </font><input type="text" name="newskeys" style="width: 150px">	
    			<br>
    			<br>
    			<font>内 &nbsp; &nbsp;  &nbsp; &nbsp;容:   &nbsp; &nbsp;</font><textarea name="newsbody" id="newsbody" style="width:150px;height:50px;"></textarea>
    			<span id="nbody" style="color: red"></span>
    			<br><br>
    			<input type="submit" id="btn" value="预览">&nbsp;&nbsp;<input type="reset" value="重置">
    		</form>
    	</div>

    </div>
    <hr>
    <div align="center">Copyright 2018 郑州大学大三实训 版权所有 </div>
  </body>
</html>
