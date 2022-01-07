
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 int GIT_RMDIR_REMOVE_FILES ;
 int cb_status__check_592 ;
 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 int * cl_git_sandbox_init (char*) ;
 int git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 int git_buf_joinpath (int *,int ,char*) ;
 int git_futils_rmdir_r (int ,int *,int ) ;
 int git_path_exists (char*) ;
 int git_repository_workdir (int *) ;
 int git_status_foreach (int *,int ,char*) ;

void test_status_worktree__issue_592_3(void)
{
 git_repository *repo;
 git_buf path = GIT_BUF_INIT;

 repo = cl_git_sandbox_init("issue_592");

 cl_git_pass(git_buf_joinpath(&path, git_repository_workdir(repo), "c"));
 cl_git_pass(git_futils_rmdir_r(git_buf_cstr(&path), ((void*)0), GIT_RMDIR_REMOVE_FILES));
 cl_assert(!git_path_exists("issue_592/c/a.txt"));

 cl_git_pass(git_status_foreach(repo, cb_status__check_592, "c/a.txt"));

 git_buf_dispose(&path);
}
