<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>	Jquery Menu</title>
		<style type="text/css">
		    html, body, table {
		        font-family: arial;
		        font-size: 14px;
		        width:1100px;
		        float:center;
		    }
		    
		    html {
		        background: background: #CD919E;
		    }
		    
		    .tab .tab-menu {
		        height: 37px;
		        background: url(../images/neck.gif);
		    }
		    
		    .tab .tab-menu ul {
		        margin: 0;
		        padding: 0;
		        list-style: none;
		    }
		    
		    .tab .tab-menu li {
		        margin: 6px 0px 0px;
		        padding: 0px 11px 0px 0px;
		        height: 25px;
		        float: left;
		        font-size: 14px;
		        font-weight: bold;
		        text-shadow: 0px 1px 1px white;
		    }
		    
		    .tab .tab-menu li a {
		        cursor: pointer;
		        height: 25px;
		        line-height: 25px;
		        padding: 0px 20px 0px 27px;
		        display: block; /* inline-block效果不好 */
		    }
		    
		    .tab .tab-menu li.over {
		        opacity: 0.6;
		    }
		    
		    .tab .tab-menu li.active {
		        opacity: 1.0;
		    }
		    
		   .tab .tab-box li.active {
		        opacity: 1.0;
		    }
		    
		    .tab .tab-box li.active a, .tab .tab-box li.over a {
		        color: white;
		        text-shadow: 0px 1px 1px black;
		        background: #7D7DFF;
		        /* background: url(images/nav-bg-l.gif) no-repeat left center; */
		    }
		    
		    .tab .tab-box li.active1 a, .tab .tab-box li.over a {
		        color: white;
		        text-shadow: 0px 1px 1px black;
		        background: #000000;
		        /* background: url(images/nav-bg-l.gif) no-repeat left center; */
		    }
		    
		    .tab .tab-menu li.active, .tab .tab-menu li.over {
		        background: url(../images/nav-bg-r.gif) repeat-x center right;
		    }
		    
		    .tab .tab-menu li.active a, .tab .tab-menu li.over a {
		        color: white;
		        text-shadow: 0px 1px 1px black;
		        background: #000000;
		        /* background: url(images/nav-bg-l.gif) no-repeat left center; */
		    }
		    
		    .tab .tab-box {
		        min-height: 50px;
		        border: 1px solid #D3D8DF;
		        border-top: none;
		        background: white;
		    }
		    
		    
		    .tab .tab-box .hide1 a.over {
				background-color: #B0C4DE;
				color: #4D4D4D;
		    }
		    .hide1 a:link {
				background-color: #B0C4DE;
				color: #4D4D4D;
		    }
		    .hide1 a:visited {
		    	background-color: #B0C4DE;
				color: #4D4D4D;
		    }
		    .hide1 a:hover {
		    	font-size: 16px;
		    	color: #ffffff;
				background-color: #607B8B;
		    }
		    .hide1 ul {
		        margin: 0;
		        padding: 0;
		        list-style: none;
		    }
		    .hide1 li {
		        margin: 6px 0px 0px;
		        padding: 0px 11px 0px 0px;
		        height: 25px;
		        float: left;
		        font-size: 14px;
		        font-weight: bold;
		        text-shadow: 0px 1px 1px white;
		    }
		    .hide1 li a {
		        cursor: pointer;
		        height: 25px;
		        line-height: 25px;
		        padding: 0px 20px 0px 27px;
		        display: block; /* inline-block效果不好 */
		        background-color:#CCCCCC;
		        text-decoration: NONE;
		    }
		    
		    
		    .hide2 {
		        display: none;
		        float: left;
		        margin-left:235px;
		    }
		    .hide2 a:over {
				background-color: #B0C4DE;
				color: #4D4D4D;
		    }
		    .hide2 a:link {
				background-color: #B0C4DE;
				color: #4D4D4D;
		    }
		    .hide2 a:visited {
		    	background-color: #B0C4DE;
				color: #4D4D4D;
		    }
		    .hide2 a:hover {
		    	font-size: 16px;
		    	color: #ffffff;
				background-color: #607B8B;
		    }
		    .hide2 ul {
		        margin: 0;
		        padding: 0;
		        list-style: none;
		    }
		    .hide2 li {
		        margin: 6px 0px 0px;
		        padding: 0px 11px 0px 0px;
		        height: 25px;
		        float: left;
		        font-size: 14px;
		        font-weight: bold;
		        text-shadow: 0px 1px 1px white;
		    }
		    .hide2 li a {
		        cursor: pointer;
		        height: 25px;
		        line-height: 25px;
		        padding: 0px 20px 0px 27px;
		        display: block; /* inline-block效果不好 */
		        background-color:#87CEEB;
		        text-decoration: NONE;
		    }
		    
		    .tips {
		    	font-size: 15px;
		    	font-family: Lucida Console;
		    	margin: 6px 0px 0px;
		        padding: 0px 11px 0px 0px;
		        height: 25px;
		        float: left;
		        color:#969696;
		        text-shadow: 0px 1px 1px white;
		    }
		    
		    .tips a:hover{
		    	font-size: 25px;
		    	font-weight: bold;
		    	font-family: Lucida Console;
		    }
    	</style>
    	<script src="../jquery/jquery-1.8.0.js"></script>
	    <script type="text/javascript">
		    $(function() {
		        var $menuLis = $(".tab .tab-menu li");
		        $menuLis.hover(function() {
		            $(this).addClass("over");
		          
		        }, function() {
		            $(this).removeClass("over");
		        }).click(function() {
		            $(this).addClass("active").siblings().removeClass("active");
		            var index = $menuLis.index(this);
		            $(this).parent().parent().siblings(".tab-box")
		            .children("div").hide().eq(index).show();
		            $('#'+index).children("li").eq(0).addClass("active");
		            
		        });
		        
		        var $li = $("#0").children("li");
		        $li.hover(function() {
		            $(this).addClass("active");
		            $(this).siblings().removeClass("active");
		        }, function() {
		            $(this).removeClass("active");
		        }).click(function() {
		        	$(this).addClass("active1");
		        	 $(this).siblings().removeClass("active1");
		        });
		        
		        var $li1 = $("#1").children("li");
		        $li1.hover(function() {
		            $(this).addClass("active");
		            $(this).siblings().removeClass("active");
		        }, function() {
		            $(this).removeClass("active");
		        }).click(function() {
		        	$(this).addClass("active1");
		        	 $(this).siblings().removeClass("active1");
		        });
		    });
	    </script>
	</head>
	<body>
		<div class="tab">
	        <div class="tab-menu">
	            <ul>
	                <li  class="active"><a  >Potential SSL CA Clients</a></li>
	                <li><a >Potentiadivl Paid DNS Clients</a></li>
	            </ul>
	        </div>
	        <div class="tab-box">
	            <div class="hide1">
	            	<ul id="0">
		            	<li class="active1"><a href="#" >SITE KEYWORDS</a></li>
		            	<li><a href="#" >ADV KEYWORDS</a></li>
		            	<li><a href="#" >ORGANIZATION</a></li>
		            	<li><a href="#" >COUNTRY</a></li>
		            	<li><a href="#" >SSL COUNT</a></li>
		            </ul>
	            </div>
	            <div class="hide2">
	            	<ul id="1">
	            		<li class="active1"><a  href="#" >SITE KEYWORDS</a></li>
		            	<li><a href="#" >SITE KEYWORDS</a></li>
		            	<li><a href="#" >ADV KEYWORDS</a></li>
	            		<li><a href="#" >ORGANIZATION</a></li>
		            	<li><a href="#" >COUNTRY</a></li>
		            </ul>
	            </div>
	        </div>
    	</div>
	</body>
</html>