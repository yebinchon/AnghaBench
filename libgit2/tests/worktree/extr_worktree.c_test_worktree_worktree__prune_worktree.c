
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int flags; } ;
typedef TYPE_1__ git_worktree_prune_options ;
struct TYPE_10__ {int gitlink_path; int gitdir_path; } ;
typedef TYPE_2__ git_worktree ;
struct TYPE_11__ {int repo; } ;


 TYPE_1__ GIT_WORKTREE_PRUNE_OPTIONS_INIT ;
 int GIT_WORKTREE_PRUNE_VALID ;
 int GIT_WORKTREE_PRUNE_WORKING_TREE ;
 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 TYPE_7__ fixture ;
 int git_path_exists (int ) ;
 int git_worktree_free (TYPE_2__*) ;
 int git_worktree_lookup (TYPE_2__**,int ,char*) ;
 int git_worktree_prune (TYPE_2__*,TYPE_1__*) ;

void test_worktree_worktree__prune_worktree(void)
{
 git_worktree_prune_options opts = GIT_WORKTREE_PRUNE_OPTIONS_INIT;
 git_worktree *wt;

 opts.flags = GIT_WORKTREE_PRUNE_VALID|GIT_WORKTREE_PRUNE_WORKING_TREE;

 cl_git_pass(git_worktree_lookup(&wt, fixture.repo, "testrepo-worktree"));
 cl_git_pass(git_worktree_prune(wt, &opts));

 cl_assert(!git_path_exists(wt->gitdir_path));
 cl_assert(!git_path_exists(wt->gitlink_path));

 git_worktree_free(wt);
}
