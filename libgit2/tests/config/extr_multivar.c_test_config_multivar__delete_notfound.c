
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_config ;


 int GIT_ENOTFOUND ;
 int cl_git_fail_with (int ,int ) ;
 int cl_git_pass (int ) ;
 int git_config_delete_multivar (int *,char*,char*) ;
 int git_config_free (int *) ;
 int git_config_open_ondisk (int **,char*) ;

void test_config_multivar__delete_notfound(void)
{
 git_config *cfg;

 cl_git_pass(git_config_open_ondisk(&cfg, "config/config11"));

 cl_git_fail_with(git_config_delete_multivar(cfg, "remote.ab.noturl", "git"), GIT_ENOTFOUND);

 git_config_free(cfg);
}
