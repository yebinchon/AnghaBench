
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef int git_config ;


 int GIT_CONFIG_LEVEL_GLOBAL ;
 int GIT_CONFIG_LEVEL_XDG ;
 int cl_assert_equal_i (int,int ) ;
 int cl_git_fail (int ) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int git_config_free (int *) ;
 int git_config_get_int32 (int *,int *,char*) ;
 int git_config_open_default (int **) ;
 int git_config_open_global (int **,int *) ;
 int git_config_open_level (int **,int *,int ) ;

void test_config_global__open_global(void)
{
 git_config *cfg, *global, *selected, *dummy;
 int32_t value;

 cl_git_mkfile("home/.gitconfig", "[global]\n  test = 4567\n");

 cl_git_pass(git_config_open_default(&cfg));
 cl_git_pass(git_config_get_int32(&value, cfg, "global.test"));
 cl_assert_equal_i(4567, value);

 cl_git_pass(git_config_open_level(&global, cfg, GIT_CONFIG_LEVEL_GLOBAL));
 cl_git_pass(git_config_get_int32(&value, global, "global.test"));
 cl_assert_equal_i(4567, value);

 cl_git_fail(git_config_open_level(&dummy, cfg, GIT_CONFIG_LEVEL_XDG));

 cl_git_pass(git_config_open_global(&selected, cfg));
 cl_git_pass(git_config_get_int32(&value, selected, "global.test"));
 cl_assert_equal_i(4567, value);

 git_config_free(selected);
 git_config_free(global);
 git_config_free(cfg);
}
