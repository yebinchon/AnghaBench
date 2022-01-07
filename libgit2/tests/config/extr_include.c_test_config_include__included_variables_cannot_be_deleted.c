
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cfg ;
 int cl_git_fail (int ) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int git_config_delete_entry (int ,char*) ;
 int git_config_open_ondisk (int *,char*) ;
 int p_unlink (char*) ;

void test_config_include__included_variables_cannot_be_deleted(void)
{
 cl_git_mkfile("top-level", "[include]\npath = included\n");
 cl_git_mkfile("included", "[foo]\nbar = value");

 cl_git_pass(git_config_open_ondisk(&cfg, "top-level"));
 cl_git_fail(git_config_delete_entry(cfg, "foo.bar"));

 cl_git_pass(p_unlink("top-level"));
 cl_git_pass(p_unlink("included"));
}
