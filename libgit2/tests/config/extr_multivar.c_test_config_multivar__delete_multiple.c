
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_config ;


 int GIT_ENOTFOUND ;
 int _name ;
 int cb ;
 int cl_assert (int) ;
 int cl_git_fail_with (int ,int ) ;
 int cl_git_pass (int ) ;
 int git_config_delete_multivar (int *,int ,char*) ;
 int git_config_free (int *) ;
 int git_config_get_multivar_foreach (int *,int ,int *,int ,int*) ;
 int git_config_open_ondisk (int **,char*) ;

void test_config_multivar__delete_multiple(void)
{
 git_config *cfg;
 int n;

 cl_git_pass(git_config_open_ondisk(&cfg, "config/config11"));

 n = 0;
 cl_git_pass(git_config_get_multivar_foreach(cfg, _name, ((void*)0), cb, &n));
 cl_assert(n == 2);

 cl_git_pass(git_config_delete_multivar(cfg, _name, "git"));

 n = 0;
 cl_git_fail_with(git_config_get_multivar_foreach(cfg, _name, ((void*)0), cb, &n), GIT_ENOTFOUND);

 git_config_free(cfg);

 cl_git_pass(git_config_open_ondisk(&cfg, "config/config11"));

 n = 0;
 cl_git_fail_with(git_config_get_multivar_foreach(cfg, _name, ((void*)0), cb, &n), GIT_ENOTFOUND);

 git_config_free(cfg);
}
