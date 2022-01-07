
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_buf ;


 int GIT_BUF_INIT ;
 int GIT_RMDIR_EMPTY_HIERARCHY ;
 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 int empty_tmp_dir ;
 int git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 int git_buf_joinpath (int *,int ,char*) ;
 int git_futils_rmdir_r (int ,int *,int ) ;
 int git_path_exists (int ) ;

void test_core_rmdir__delete_recursive(void)
{
 git_buf path = GIT_BUF_INIT;
 cl_git_pass(git_buf_joinpath(&path, empty_tmp_dir, "/one"));
 cl_assert(git_path_exists(git_buf_cstr(&path)));

 cl_git_pass(git_futils_rmdir_r(empty_tmp_dir, ((void*)0), GIT_RMDIR_EMPTY_HIERARCHY));

 cl_assert(!git_path_exists(git_buf_cstr(&path)));

 git_buf_dispose(&path);
}
