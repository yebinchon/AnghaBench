
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int flags; } ;
typedef TYPE_1__ git_worktree_prune_options ;
typedef int git_worktree ;
typedef int git_repository ;
struct TYPE_6__ {int repo; } ;


 TYPE_1__ GIT_WORKTREE_PRUNE_OPTIONS_INIT ;
 int GIT_WORKTREE_PRUNE_VALID ;
 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 TYPE_3__ fixture ;
 int git_repository_free (int *) ;
 int git_repository_open_from_worktree (int **,int *) ;
 int git_worktree_free (int *) ;
 int git_worktree_lookup (int **,int ,char*) ;
 int git_worktree_prune (int *,TYPE_1__*) ;

void test_worktree_worktree__prune_valid(void)
{
 git_worktree_prune_options opts = GIT_WORKTREE_PRUNE_OPTIONS_INIT;
 git_worktree *wt;
 git_repository *repo;

 opts.flags = GIT_WORKTREE_PRUNE_VALID;

 cl_git_pass(git_worktree_lookup(&wt, fixture.repo, "testrepo-worktree"));
 cl_git_pass(git_worktree_prune(wt, &opts));


 cl_git_fail(git_repository_open_from_worktree(&repo, wt));

 git_worktree_free(wt);
 git_repository_free(repo);
}
