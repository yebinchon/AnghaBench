
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_buf ;


 int GIT_BUF_INIT ;
 int GIT_RMDIR_REMOVE_FILES ;
 int GIT_RMDIR_SKIP_NONEMPTY ;
 int cl_assert (int) ;
 int cl_git_mkfile (int ,char*) ;
 int cl_git_pass (int ) ;
 int empty_tmp_dir ;
 int git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 int git_buf_joinpath (int *,int ,char*) ;
 int git_futils_rmdir_r (int ,int *,int ) ;
 int git_path_exists (int ) ;

void test_core_rmdir__can_skip_non_empty_dir(void)
{
 git_buf file = GIT_BUF_INIT;

 cl_git_pass(git_buf_joinpath(&file, empty_tmp_dir, "/two/file.txt"));

 cl_git_mkfile(git_buf_cstr(&file), "dummy");

 cl_git_pass(git_futils_rmdir_r(empty_tmp_dir, ((void*)0), GIT_RMDIR_SKIP_NONEMPTY));
 cl_assert(git_path_exists(git_buf_cstr(&file)) == 1);

 cl_git_pass(git_futils_rmdir_r(empty_tmp_dir, ((void*)0), GIT_RMDIR_REMOVE_FILES));
 cl_assert(git_path_exists(empty_tmp_dir) == 0);

 git_buf_dispose(&file);
}
