
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_RMDIR_REMOVE_FILES ;
 int cl_assert (int) ;
 int cl_fixture_cleanup (char*) ;
 int cl_git_pass (int ) ;
 int cl_sandbox_set_search_path_defaults () ;
 int git_buf_dispose (int *) ;
 int git_futils_rmdir_r (char*,int *,int ) ;
 int git_path_isdir (char*) ;
 int path ;

void test_repo_config__cleanup(void)
{
 cl_sandbox_set_search_path_defaults();

 git_buf_dispose(&path);

 cl_git_pass(
  git_futils_rmdir_r("alternate", ((void*)0), GIT_RMDIR_REMOVE_FILES));
 cl_assert(!git_path_isdir("alternate"));

 cl_fixture_cleanup("empty_standard_repo");

}
