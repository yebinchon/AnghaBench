
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int buf ;
 int cfg ;
 int cl_git_fail (int ) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int git_config_get_string_buf (int *,int ,char*) ;
 int git_config_open_ondisk (int *,char*) ;
 int p_unlink (char*) ;

void test_config_include__removing_include_removes_values(void)
{
 cl_git_mkfile("top-level", "[include]\npath = included");
 cl_git_mkfile("included", "[foo]\nbar = value");

 cl_git_pass(git_config_open_ondisk(&cfg, "top-level"));
 cl_git_mkfile("top-level", "");
 cl_git_fail(git_config_get_string_buf(&buf, cfg, "foo.bar"));

 cl_git_pass(p_unlink("top-level"));
 cl_git_pass(p_unlink("included"));
}
