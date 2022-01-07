
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 int cb_status__check_592 ;
 int cl_git_pass (int ) ;
 int * cl_git_sandbox_init (char*) ;
 int git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 int git_buf_joinpath (int *,int ,char*) ;
 int git_repository_workdir (int *) ;
 int git_status_foreach (int *,int ,char*) ;
 int p_unlink (int ) ;

void test_status_worktree__issue_592_4(void)
{
 git_repository *repo;
 git_buf path = GIT_BUF_INIT;

 repo = cl_git_sandbox_init("issue_592");

 cl_git_pass(git_buf_joinpath(&path, git_repository_workdir(repo), "t/b.txt"));
 cl_git_pass(p_unlink(git_buf_cstr(&path)));

 cl_git_pass(git_status_foreach(repo, cb_status__check_592, "t/b.txt"));

 git_buf_dispose(&path);
}
