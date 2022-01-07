
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef int git_config ;


 int cl_assert (int) ;
 int cl_fixture (char*) ;
 int cl_git_pass (int ) ;
 int git_config_free (int *) ;
 int git_config_get_bool (int*,int *,char*) ;
 int git_config_get_int32 (int*,int *,char*) ;
 int git_config_open_ondisk (int **,int ) ;

void test_config_read__simple_read(void)
{
 git_config *cfg;
 int32_t i;

 cl_git_pass(git_config_open_ondisk(&cfg, cl_fixture("config/config0")));

 cl_git_pass(git_config_get_int32(&i, cfg, "core.repositoryformatversion"));
 cl_assert(i == 0);
 cl_git_pass(git_config_get_bool(&i, cfg, "core.filemode"));
 cl_assert(i == 1);
 cl_git_pass(git_config_get_bool(&i, cfg, "core.bare"));
 cl_assert(i == 0);
 cl_git_pass(git_config_get_bool(&i, cfg, "core.logallrefupdates"));
 cl_assert(i == 1);

 git_config_free(cfg);
}
