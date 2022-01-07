
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef int git_config ;


 scalar_t__ GIT_ENOTFOUND ;
 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 int git_config_delete_entry (int *,char*) ;
 int git_config_free (int *) ;
 scalar_t__ git_config_get_int32 (int *,int *,char*) ;
 int git_config_open_ondisk (int **,char*) ;
 int git_config_set_int32 (int *,char*,int) ;

void test_config_write__delete_value(void)
{
 git_config *cfg;
 int32_t i;

 cl_git_pass(git_config_open_ondisk(&cfg, "config9"));
 cl_git_pass(git_config_set_int32(cfg, "core.dummy", 5));
 git_config_free(cfg);

 cl_git_pass(git_config_open_ondisk(&cfg, "config9"));
 cl_git_pass(git_config_delete_entry(cfg, "core.dummy"));
 git_config_free(cfg);

 cl_git_pass(git_config_open_ondisk(&cfg, "config9"));
 cl_assert(git_config_get_int32(&i, cfg, "core.dummy") == GIT_ENOTFOUND);
 cl_git_pass(git_config_set_int32(cfg, "core.dummy", 1));
 git_config_free(cfg);
}
