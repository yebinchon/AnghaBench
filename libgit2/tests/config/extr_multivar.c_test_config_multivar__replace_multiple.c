
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_config ;


 int _name ;
 int cb ;
 int cl_assert_equal_i (int,int) ;
 int cl_git_pass (int ) ;
 int git_config_free (int *) ;
 int git_config_get_multivar_foreach (int *,int ,char*,int ,int*) ;
 int git_config_open_ondisk (int **,char*) ;
 int git_config_set_multivar (int *,int ,char*,char*) ;

void test_config_multivar__replace_multiple(void)
{
 git_config *cfg;
 int n;

 cl_git_pass(git_config_open_ondisk(&cfg, "config/config11"));
 cl_git_pass(git_config_set_multivar(cfg, _name, "git://", "git://git.otherplace.org/libgit2"));

 n = 0;
 cl_git_pass(git_config_get_multivar_foreach(cfg, _name, "otherplace", cb, &n));
 cl_assert_equal_i(n, 2);

 git_config_free(cfg);

 cl_git_pass(git_config_open_ondisk(&cfg, "config/config11"));

 n = 0;
 cl_git_pass(git_config_get_multivar_foreach(cfg, _name, "otherplace", cb, &n));
 cl_assert_equal_i(n, 2);

 git_config_free(cfg);
}
