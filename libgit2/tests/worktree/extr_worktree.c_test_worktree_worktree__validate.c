
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int git_worktree ;
struct TYPE_2__ {int repo; } ;


 int cl_git_pass (int ) ;
 TYPE_1__ fixture ;
 int git_worktree_free (int *) ;
 int git_worktree_lookup (int **,int ,char*) ;
 int git_worktree_validate (int *) ;

void test_worktree_worktree__validate(void)
{
 git_worktree *wt;

 cl_git_pass(git_worktree_lookup(&wt, fixture.repo, "testrepo-worktree"));
 cl_git_pass(git_worktree_validate(wt));

 git_worktree_free(wt);
}
