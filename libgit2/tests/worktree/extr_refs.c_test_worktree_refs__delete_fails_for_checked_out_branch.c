
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int git_reference ;
struct TYPE_2__ {int repo; } ;


 int GIT_BRANCH_LOCAL ;
 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 TYPE_1__ fixture ;
 int git_branch_delete (int *) ;
 int git_branch_lookup (int **,int ,char*,int ) ;
 int git_reference_free (int *) ;

void test_worktree_refs__delete_fails_for_checked_out_branch(void)
{
 git_reference *branch;

 cl_git_pass(git_branch_lookup(&branch, fixture.repo,
      "testrepo-worktree", GIT_BRANCH_LOCAL));
 cl_git_fail(git_branch_delete(branch));

 git_reference_free(branch);
}
