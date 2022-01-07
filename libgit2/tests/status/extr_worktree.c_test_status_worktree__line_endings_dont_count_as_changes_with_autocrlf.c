
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;


 int GIT_STATUS_WT_MODIFIED ;
 int cl_assert_equal_i (int ,unsigned int) ;
 int cl_git_pass (int ) ;
 int cl_git_rewritefile (char*,char*) ;
 int * cl_git_sandbox_init (char*) ;
 int cl_repo_set_bool (int *,char*,int) ;
 int git_status_file (unsigned int*,int *,char*) ;

void test_status_worktree__line_endings_dont_count_as_changes_with_autocrlf(void)
{
 git_repository *repo = cl_git_sandbox_init("status");
 unsigned int status;

 cl_repo_set_bool(repo, "core.autocrlf", 1);

 cl_git_rewritefile("status/current_file", "current_file\r\n");

 cl_git_pass(git_status_file(&status, repo, "current_file"));





 cl_assert_equal_i(GIT_STATUS_WT_MODIFIED, status);
}
