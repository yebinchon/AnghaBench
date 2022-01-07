
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int buf ;
 int cfg ;
 int cl_assert_equal_s (char*,int ) ;
 int cl_fixture (char*) ;
 int cl_git_mkfile (char*,int ) ;
 int cl_git_pass (int ) ;
 int git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 int git_buf_printf (int *,char*,int ) ;
 int git_config_get_string_buf (int *,int ,char*) ;
 int git_config_open_ondisk (int *,char*) ;
 int p_unlink (char*) ;

void test_config_include__absolute(void)
{
 cl_git_pass(git_buf_printf(&buf, "[include]\npath = %s/config-included", cl_fixture("config")));

 cl_git_mkfile("config-include-absolute", git_buf_cstr(&buf));
 git_buf_dispose(&buf);
 cl_git_pass(git_config_open_ondisk(&cfg, "config-include-absolute"));

 cl_git_pass(git_config_get_string_buf(&buf, cfg, "foo.bar.baz"));
 cl_assert_equal_s("huzzah", git_buf_cstr(&buf));

 cl_git_pass(p_unlink("config-include-absolute"));
}
