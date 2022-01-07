
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_RMDIR_REMOVE_FILES ;
 int cl_git_sandbox_cleanup () ;
 int clear_git_env () ;
 int git_futils_rmdir_r (char*,int *,int ) ;
 scalar_t__ git_path_isdir (char*) ;

void test_repo_env__cleanup(void)
{
 cl_git_sandbox_cleanup();

 if (git_path_isdir("attr"))
  git_futils_rmdir_r("attr", ((void*)0), GIT_RMDIR_REMOVE_FILES);
 if (git_path_isdir("testrepo.git"))
  git_futils_rmdir_r("testrepo.git", ((void*)0), GIT_RMDIR_REMOVE_FILES);
 if (git_path_isdir("peeled.git"))
  git_futils_rmdir_r("peeled.git", ((void*)0), GIT_RMDIR_REMOVE_FILES);

 clear_git_env();
}
