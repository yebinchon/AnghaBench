
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cfg ;
 int cl_assert_equal_i (int,int) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int git_config_get_int32 (int*,int ,char*) ;
 int git_config_open_ondisk (int *,char*) ;
 int p_unlink (char*) ;

void test_config_include__variables_in_included_override_including(void)
{
 int i;

 cl_git_mkfile("top-level", "[foo]\nbar = 1\n[include]\npath = included");
 cl_git_mkfile("included", "[foo]\nbar = 2");

 cl_git_pass(git_config_open_ondisk(&cfg, "top-level"));
 cl_git_pass(git_config_get_int32(&i, cfg, "foo.bar"));
 cl_assert_equal_i(i, 2);

 cl_git_pass(p_unlink("top-level"));
 cl_git_pass(p_unlink("included"));
}
