
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_config ;


 int _name ;
 int cb ;
 int cl_assert_equal_i (int,int) ;
 int cl_git_pass (int ) ;
 int git_config_delete_multivar (int *,int ,char*) ;
 int git_config_free (int *) ;
 int git_config_get_multivar_foreach (int *,int ,int *,int ,int*) ;
 int git_config_open_ondisk (int **,char*) ;

void test_config_multivar__delete(void)
{
 git_config *cfg;
 int n;

 cl_git_pass(git_config_open_ondisk(&cfg, "config/config11"));

 n = 0;
 cl_git_pass(git_config_get_multivar_foreach(cfg, _name, ((void*)0), cb, &n));
 cl_assert_equal_i(2, n);

 cl_git_pass(git_config_delete_multivar(cfg, _name, "github"));

 n = 0;
 cl_git_pass(git_config_get_multivar_foreach(cfg, _name, ((void*)0), cb, &n));
 cl_assert_equal_i(1, n);

 git_config_free(cfg);

 cl_git_pass(git_config_open_ondisk(&cfg, "config/config11"));

 n = 0;
 cl_git_pass(git_config_get_multivar_foreach(cfg, _name, ((void*)0), cb, &n));
 cl_assert_equal_i(1, n);

 git_config_free(cfg);
}
