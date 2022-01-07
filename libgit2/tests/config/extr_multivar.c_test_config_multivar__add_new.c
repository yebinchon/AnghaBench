
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_config ;


 int cb ;
 int cl_assert_equal_i (int,int) ;
 int cl_git_pass (int ) ;
 int git_config_free (int *) ;
 int git_config_get_multivar_foreach (int *,char const*,int *,int ,int*) ;
 int git_config_open_ondisk (int **,char*) ;
 int git_config_set_multivar (int *,char const*,char*,char*) ;

void test_config_multivar__add_new(void)
{
 const char *var = "a.brand.new";
 git_config *cfg;
 int n;

 cl_git_pass(git_config_open_ondisk(&cfg, "config/config11"));

 cl_git_pass(git_config_set_multivar(cfg, var, "$^", "variable"));
 n = 0;
 cl_git_pass(git_config_get_multivar_foreach(cfg, var, ((void*)0), cb, &n));
 cl_assert_equal_i(n, 1);

 git_config_free(cfg);
}
