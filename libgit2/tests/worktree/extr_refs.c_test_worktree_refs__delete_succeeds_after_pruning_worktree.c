
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int flags; } ;
typedef TYPE_1__ git_worktree_prune_options ;
typedef int git_worktree ;
typedef int git_reference ;
struct TYPE_6__ {int repo; int worktreename; } ;


 int GIT_BRANCH_LOCAL ;
 TYPE_1__ GIT_WORKTREE_PRUNE_OPTIONS_INIT ;
 int GIT_WORKTREE_PRUNE_VALID ;
 int cl_git_pass (int ) ;
 TYPE_3__ fixture ;
 int git_branch_delete (int *) ;
 int git_branch_lookup (int **,int ,char*,int ) ;
 int git_reference_free (int *) ;
 int git_worktree_free (int *) ;
 int git_worktree_lookup (int **,int ,int ) ;
 int git_worktree_prune (int *,TYPE_1__*) ;

void test_worktree_refs__delete_succeeds_after_pruning_worktree(void)
{
 git_worktree_prune_options opts = GIT_WORKTREE_PRUNE_OPTIONS_INIT;
 git_reference *branch;
 git_worktree *worktree;

 opts.flags = GIT_WORKTREE_PRUNE_VALID;

 cl_git_pass(git_worktree_lookup(&worktree, fixture.repo, fixture.worktreename));
 cl_git_pass(git_worktree_prune(worktree, &opts));
 git_worktree_free(worktree);

 cl_git_pass(git_branch_lookup(&branch, fixture.repo,
      "testrepo-worktree", GIT_BRANCH_LOCAL));
 cl_git_pass(git_branch_delete(branch));
 git_reference_free(branch);
}
