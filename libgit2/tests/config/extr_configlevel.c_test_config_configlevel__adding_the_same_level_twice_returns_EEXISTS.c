
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_config ;


 int GIT_CONFIG_LEVEL_GLOBAL ;
 int GIT_CONFIG_LEVEL_LOCAL ;
 int GIT_EEXISTS ;
 int cl_assert_equal_i (int ,int) ;
 int cl_fixture (char*) ;
 int cl_git_fail (int) ;
 int cl_git_pass (int) ;
 int git_config_add_file_ondisk (int *,int ,int ,int *,int ) ;
 int git_config_free (int *) ;
 int git_config_new (int **) ;

void test_config_configlevel__adding_the_same_level_twice_returns_EEXISTS(void)
{
 int error;
 git_config *cfg;

 cl_git_pass(git_config_new(&cfg));
 cl_git_pass(git_config_add_file_ondisk(cfg, cl_fixture("config/config9"),
  GIT_CONFIG_LEVEL_LOCAL, ((void*)0), 0));
 cl_git_pass(git_config_add_file_ondisk(cfg, cl_fixture("config/config15"),
  GIT_CONFIG_LEVEL_GLOBAL, ((void*)0), 0));
 error = git_config_add_file_ondisk(cfg, cl_fixture("config/config16"),
  GIT_CONFIG_LEVEL_GLOBAL, ((void*)0), 0);

 cl_git_fail(error);
 cl_assert_equal_i(GIT_EEXISTS, error);

 git_config_free(cfg);
}
