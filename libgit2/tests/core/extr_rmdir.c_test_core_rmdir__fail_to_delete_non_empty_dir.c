
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int GIT_RMDIR_EMPTY_HIERARCHY ;
 int cl_assert (int) ;
 int cl_git_fail (int ) ;
 int cl_git_mkfile (int ,char*) ;
 int cl_git_pass (int ) ;
 int cl_must_pass (int ) ;
 int empty_tmp_dir ;
 int git_buf_cstr (TYPE_1__*) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_joinpath (TYPE_1__*,int ,char*) ;
 int git_futils_rmdir_r (int ,int *,int ) ;
 int git_path_exists (int ) ;
 int p_unlink (int ) ;

void test_core_rmdir__fail_to_delete_non_empty_dir(void)
{
 git_buf file = GIT_BUF_INIT;

 cl_git_pass(git_buf_joinpath(&file, empty_tmp_dir, "/two/file.txt"));

 cl_git_mkfile(git_buf_cstr(&file), "dummy");

 cl_git_fail(git_futils_rmdir_r(empty_tmp_dir, ((void*)0), GIT_RMDIR_EMPTY_HIERARCHY));

 cl_must_pass(p_unlink(file.ptr));
 cl_git_pass(git_futils_rmdir_r(empty_tmp_dir, ((void*)0), GIT_RMDIR_EMPTY_HIERARCHY));

 cl_assert(!git_path_exists(empty_tmp_dir));

 git_buf_dispose(&file);
}
