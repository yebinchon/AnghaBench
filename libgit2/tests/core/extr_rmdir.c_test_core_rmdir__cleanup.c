
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_RMDIR_REMOVE_FILES ;
 int cl_git_pass (int ) ;
 int empty_tmp_dir ;
 int git_futils_rmdir_r (int ,int *,int ) ;
 scalar_t__ git_path_exists (int ) ;

void test_core_rmdir__cleanup(void)
{
 if (git_path_exists(empty_tmp_dir))
  cl_git_pass(git_futils_rmdir_r(empty_tmp_dir, ((void*)0), GIT_RMDIR_REMOVE_FILES));
}
