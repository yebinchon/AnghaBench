
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int buf ;
 int cfg ;
 int cl_assert_equal_s (char*,int ) ;
 int cl_fixture (char*) ;
 int cl_git_pass (int ) ;
 int git_buf_cstr (int *) ;
 int git_config_get_string_buf (int *,int ,char*) ;
 int git_config_open_ondisk (int *,int ) ;

void test_config_include__relative(void)
{
 cl_git_pass(git_config_open_ondisk(&cfg, cl_fixture("config/config-include")));

 cl_git_pass(git_config_get_string_buf(&buf, cfg, "foo.bar.baz"));
 cl_assert_equal_s("huzzah", git_buf_cstr(&buf));
}
