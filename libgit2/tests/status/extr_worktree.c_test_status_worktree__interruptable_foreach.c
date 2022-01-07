
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;


 int cb_status__interrupt ;
 int cl_assert_equal_i (int,int) ;
 int * cl_git_sandbox_init (char*) ;
 int git_status_foreach (int *,int ,int*) ;

void test_status_worktree__interruptable_foreach(void)
{
 int count = 0;
 git_repository *repo = cl_git_sandbox_init("status");

 cl_assert_equal_i(
  -111, git_status_foreach(repo, cb_status__interrupt, &count)
 );

 cl_assert_equal_i(8, count);
}
