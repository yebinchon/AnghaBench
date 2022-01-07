
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef int git_config ;


 int GIT_CONFIG_LEVEL_GLOBAL ;
 int GIT_CONFIG_LEVEL_LOCAL ;
 int GIT_CONFIG_LEVEL_SYSTEM ;
 int cl_assert_equal_i (int,int ) ;
 int cl_fixture (char*) ;
 int cl_git_pass (int ) ;
 int git_config_add_file_ondisk (int *,int ,int ,int *,int ) ;
 int git_config_free (int *) ;
 int git_config_get_int32 (int *,int *,char*) ;
 int git_config_new (int **) ;

void test_config_read__fallback_from_local_to_global_and_from_global_to_system(void)
{
 git_config *cfg;
 int32_t i;

 cl_git_pass(git_config_new(&cfg));
 cl_git_pass(git_config_add_file_ondisk(cfg, cl_fixture("config/config9"),
  GIT_CONFIG_LEVEL_SYSTEM, ((void*)0), 0));
 cl_git_pass(git_config_add_file_ondisk(cfg, cl_fixture("config/config15"),
  GIT_CONFIG_LEVEL_GLOBAL, ((void*)0), 0));
 cl_git_pass(git_config_add_file_ondisk(cfg, cl_fixture("config/config16"),
  GIT_CONFIG_LEVEL_LOCAL, ((void*)0), 0));

 cl_git_pass(git_config_get_int32(&i, cfg, "core.global"));
 cl_assert_equal_i(17, i);
 cl_git_pass(git_config_get_int32(&i, cfg, "core.system"));
 cl_assert_equal_i(11, i);

 git_config_free(cfg);
}
