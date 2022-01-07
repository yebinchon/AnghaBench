
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;


 int cb_status__count ;
 int cl_assert_equal_i (int,int) ;
 int cl_git_pass (int ) ;
 int * cl_git_sandbox_init (char*) ;
 int git_status_foreach (int *,int ,int*) ;

void test_status_worktree__issue_592_ignored_dirs_with_tracked_content(void)
{
 int count = 0;
 git_repository *repo = cl_git_sandbox_init("issue_592b");

 cl_git_pass(git_status_foreach(repo, cb_status__count, &count));
 cl_assert_equal_i(1, count);





}
