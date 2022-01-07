
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef int git_config ;


 int GIT_CONFIG_LEVEL_GLOBAL ;
 int GIT_CONFIG_LEVEL_LOCAL ;
 scalar_t__ GIT_ENOTFOUND ;
 int cl_assert (int) ;
 int cl_git_pass (scalar_t__) ;
 scalar_t__ git_config_add_file_ondisk (int *,char*,int ,int *,int ) ;
 scalar_t__ git_config_delete_entry (int *,char*) ;
 int git_config_free (int *) ;
 scalar_t__ git_config_get_int32 (int*,int *,char*) ;
 scalar_t__ git_config_new (int **) ;
 scalar_t__ git_config_open_level (int **,int *,int ) ;
 scalar_t__ git_config_open_ondisk (int **,char*) ;
 scalar_t__ git_config_set_int32 (int *,char*,int) ;

void test_config_write__delete_value_at_specific_level(void)
{
 git_config *cfg, *cfg_specific;
 int32_t i;

 cl_git_pass(git_config_open_ondisk(&cfg, "config15"));
 cl_git_pass(git_config_get_int32(&i, cfg, "core.dummy2"));
 cl_assert(i == 7);
 git_config_free(cfg);

 cl_git_pass(git_config_new(&cfg));
 cl_git_pass(git_config_add_file_ondisk(cfg, "config9",
  GIT_CONFIG_LEVEL_LOCAL, ((void*)0), 0));
 cl_git_pass(git_config_add_file_ondisk(cfg, "config15",
  GIT_CONFIG_LEVEL_GLOBAL, ((void*)0), 0));

 cl_git_pass(git_config_open_level(&cfg_specific, cfg, GIT_CONFIG_LEVEL_GLOBAL));

 cl_git_pass(git_config_delete_entry(cfg_specific, "core.dummy2"));
 git_config_free(cfg);

 cl_git_pass(git_config_open_ondisk(&cfg, "config15"));
 cl_assert(git_config_get_int32(&i, cfg, "core.dummy2") == GIT_ENOTFOUND);
 cl_git_pass(git_config_set_int32(cfg, "core.dummy2", 7));

 git_config_free(cfg_specific);
 git_config_free(cfg);
}
