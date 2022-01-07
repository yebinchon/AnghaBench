
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int git_worktree ;
struct TYPE_2__ {int repo; } ;


 int cl_assert_equal_p (int *,int *) ;
 int cl_git_fail (int ) ;
 TYPE_1__ fixture ;
 int git_worktree_lookup (int **,int ,char*) ;

void test_worktree_worktree__lookup_nonexistent_worktree(void)
{
 git_worktree *wt;

 cl_git_fail(git_worktree_lookup(&wt, fixture.repo, "nonexistent"));
 cl_assert_equal_p(wt, ((void*)0));
}
