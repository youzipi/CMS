<#assign menu="system">
<#assign submenu="system_basic">
<#include "head.ftl">
<style type="text/css">
.m-bot15 {
    margin-bottom: 5px;
}
.form-control {
    border: 1px solid #E2E2E4;
    box-shadow: none;
    color: #C2C2C2;
}
.input-lg {
    border-radius: 6px;
    font-size: 15px;
    height: 40px;
    line-height: 1.33;
    padding: 9px 15px；
}

</style>
		<!--main content start-->
		<section id="main-content">
			<section class="wrapper">
              <!-- page start-->
              <div class="row">
                  <div class="col-lg-12">
                      <section class="panel">
                          <header class="panel-heading">
                            	 添加目录
                          </header>
                          <div class="panel-body">
                              <form method="post" class="form-horizontal" action="${basePath}/admin/folder/addNewFolder.do">
                              	<fieldset>
                                  <div class="form-group">
                                      <label class="col-sm-2 col-sm-2 control-label">目录名称</label>
                                      <div class="col-sm-10">
                                          <input type="text" class="form-control" name="folderName">
                                      </div>
                                  </div>
                                  <div class="form-group">
                                      <label class="col-sm-2 col-sm-2 control-label">英文名称</label>
                                      <div class="col-sm-10">
                                          <input type="text" class="form-control" name="folderEname">
                                      </div>
                                  </div>
                                  <div class="form-group">
                                      <label class="col-sm-2 col-sm-2 control-label">父级标签</label>
                                      <div class="col-sm-10">
                                        <select class="form-control input-lg m-bot15" style="font-size:15px;width: 300px;" name="fatherId">
                                        	<option>未分类</option>
                                        	<#list folderAll as folder>  	
                                          		<option value="${folder.folderId}">${folder.name}</option>
                                        	</#list>
                                        </select>
                                      </div>
                                  </div>
                                  <div class="form-group">
                                      <label class="col-sm-2 col-sm-2 control-label">目录类型</label>
                                      <div class="col-sm-10">
                                      	<select class="form-control input-lg m-bot15" style="font-size:15px;width: 300px;" name="type"> 	
                                        	<option value= "0">文章</option>
                                          	<option value= "1">下载</option>
                                          	<option value= "2">商品</option>
                                          	<option value= "3">图片</option>
                                        </select>
                                      </div>
                                  </div>
                                  <div class="form-group">
                                      <label class="col-sm-2 col-sm-2 control-label">目录状态</label>
                                      <div class="col-sm-10">
                                      	<select class="form-control input-lg m-bot15" style="font-size:15px;width: 300px;" name="status"> 	
                                        	<option value= "0">隐藏</option>
                                          	<option value= "1">显示</option>
                                        </select>
                                      </div>
                                  </div>
                                  <div class="form-group">
                                  	<label class="col-sm-2 col-sm-2 control-label"></label>
                                      <input class="button" value="增加" type="submit" style="height: 35px;margin-left: 15px; width: 60px;">
                                  </div>
                                 </fieldset>
                              </form>
                          </div>
                      </section>
                  </div>
              </div>
              <!-- page end-->
          </section>
		</section>
		<!--main content end-->
<#include "foot.ftl">
