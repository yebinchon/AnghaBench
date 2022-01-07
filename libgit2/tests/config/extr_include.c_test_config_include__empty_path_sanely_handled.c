
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int buf ;
 int cfg ;
 int cl_assert_equal_s (char*,int ) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int git_buf_cstr (int *) ;
 int git_config_get_string_buf (int *,int ,char*) ;
 int git_config_open_ondisk (int *,char*) ;
 int p_unlink (char*) ;

void test_config_include__empty_path_sanely_handled(void)
{
 cl_git_mkfile("a", "[include]\npath");
 cl_git_pass(git_config_open_ondisk(&cfg, "a"));
 cl_git_pass(git_config_get_string_buf(&buf, cfg, "include.path"));
 cl_assert_equal_s("", git_buf_cstr(&buf));

 cl_git_pass(p_unlink("a"));
}
