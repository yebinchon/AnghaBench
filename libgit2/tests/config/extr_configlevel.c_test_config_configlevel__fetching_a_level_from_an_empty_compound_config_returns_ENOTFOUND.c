
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_config ;


 int GIT_CONFIG_LEVEL_LOCAL ;
 int GIT_ENOTFOUND ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_git_pass (int ) ;
 int git_config_free (int *) ;
 int git_config_new (int **) ;
 int git_config_open_level (int **,int *,int ) ;

void test_config_configlevel__fetching_a_level_from_an_empty_compound_config_returns_ENOTFOUND(void)
{
 git_config *cfg;
 git_config *local_cfg;

 cl_git_pass(git_config_new(&cfg));

 cl_assert_equal_i(GIT_ENOTFOUND, git_config_open_level(&local_cfg, cfg, GIT_CONFIG_LEVEL_LOCAL));

 git_config_free(cfg);
}
