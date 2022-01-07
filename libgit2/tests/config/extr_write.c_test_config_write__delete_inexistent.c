
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_config ;


 scalar_t__ GIT_ENOTFOUND ;
 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 scalar_t__ git_config_delete_entry (int *,char*) ;
 int git_config_free (int *) ;
 int git_config_open_ondisk (int **,char*) ;

void test_config_write__delete_inexistent(void)
{
 git_config *cfg;

 cl_git_pass(git_config_open_ondisk(&cfg, "config9"));
 cl_assert(git_config_delete_entry(cfg, "core.imaginary") == GIT_ENOTFOUND);
 git_config_free(cfg);
}
