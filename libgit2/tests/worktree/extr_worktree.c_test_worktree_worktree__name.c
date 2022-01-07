
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int git_worktree ;
struct TYPE_2__ {int repo; } ;


 int cl_assert_equal_s (int ,char*) ;
 int cl_git_pass (int ) ;
 TYPE_1__ fixture ;
 int git_worktree_free (int *) ;
 int git_worktree_lookup (int **,int ,char*) ;
 int git_worktree_name (int *) ;

void test_worktree_worktree__name(void)
{
 git_worktree *wt;

 cl_git_pass(git_worktree_lookup(&wt, fixture.repo, "testrepo-worktree"));
 cl_assert_equal_s(git_worktree_name(wt), "testrepo-worktree");

 git_worktree_free(wt);
}
