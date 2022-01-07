
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_config ;


 int GIT_ENOTFOUND ;
 int _name ;
 int cb ;
 int cl_assert_equal_i (int,int) ;
 int cl_git_pass (int) ;
 int git_config_get_multivar_foreach (int *,int ,char*,int ,int*) ;

__attribute__((used)) static void check_get_multivar_foreach(
 git_config *cfg, int expected, int expected_patterned)
{
 int n = 0;

 if (expected > 0) {
  cl_git_pass(git_config_get_multivar_foreach(cfg, _name, ((void*)0), cb, &n));
  cl_assert_equal_i(expected, n);
 } else {
  cl_assert_equal_i(GIT_ENOTFOUND,
   git_config_get_multivar_foreach(cfg, _name, ((void*)0), cb, &n));
 }

 n = 0;

 if (expected_patterned > 0) {
  cl_git_pass(git_config_get_multivar_foreach(cfg, _name, "example", cb, &n));
  cl_assert_equal_i(expected_patterned, n);
 } else {
  cl_assert_equal_i(GIT_ENOTFOUND,
   git_config_get_multivar_foreach(cfg, _name, "example", cb, &n));
 }
}
