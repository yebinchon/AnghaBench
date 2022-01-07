
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_RMDIR_REMOVE_FILES ;
 int cl_git_pass (int ) ;
 int cl_sandbox_set_search_path_defaults () ;
 int git_futils_rmdir_r (char*,int *,int ) ;

void test_config_global__cleanup(void)
{
 cl_sandbox_set_search_path_defaults();
 cl_git_pass(git_futils_rmdir_r("home", ((void*)0), GIT_RMDIR_REMOVE_FILES));
 cl_git_pass(git_futils_rmdir_r("xdg", ((void*)0), GIT_RMDIR_REMOVE_FILES));
 cl_git_pass(git_futils_rmdir_r("etc", ((void*)0), GIT_RMDIR_REMOVE_FILES));
}
