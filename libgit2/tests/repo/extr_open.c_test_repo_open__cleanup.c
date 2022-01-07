
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_RMDIR_REMOVE_FILES ;
 int cl_git_sandbox_cleanup () ;
 int git_futils_rmdir_r (char*,int *,int ) ;
 scalar_t__ git_path_isdir (char*) ;

void test_repo_open__cleanup(void)
{
 cl_git_sandbox_cleanup();

 if (git_path_isdir("alternate"))
  git_futils_rmdir_r("alternate", ((void*)0), GIT_RMDIR_REMOVE_FILES);
}
