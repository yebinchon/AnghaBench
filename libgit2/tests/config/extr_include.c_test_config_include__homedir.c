
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_CONFIG_LEVEL_GLOBAL ;
 int GIT_OPT_SET_SEARCH_PATH ;
 int buf ;
 int cfg ;
 int cl_assert_equal_s (char*,int ) ;
 int cl_fixture (char*) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int cl_sandbox_set_search_path_defaults () ;
 int git_buf_cstr (int *) ;
 int git_config_get_string_buf (int *,int ,char*) ;
 int git_config_open_ondisk (int *,char*) ;
 int git_libgit2_opts (int ,int ,int ) ;
 int p_unlink (char*) ;

void test_config_include__homedir(void)
{
 cl_git_pass(git_libgit2_opts(GIT_OPT_SET_SEARCH_PATH, GIT_CONFIG_LEVEL_GLOBAL, cl_fixture("config")));
 cl_git_mkfile("config-include-homedir", "[include]\npath = ~/config-included");

 cl_git_pass(git_config_open_ondisk(&cfg, "config-include-homedir"));

 cl_git_pass(git_config_get_string_buf(&buf, cfg, "foo.bar.baz"));
 cl_assert_equal_s("huzzah", git_buf_cstr(&buf));

 cl_sandbox_set_search_path_defaults();

 cl_git_pass(p_unlink("config-include-homedir"));
}
