
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int git_worktree ;
typedef int git_repository ;
struct TYPE_2__ {int repo; } ;


 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 TYPE_1__ fixture ;
 int git_repository_free (int *) ;
 int git_repository_open_from_worktree (int **,int *) ;
 int git_worktree_free (int *) ;
 int git_worktree_lookup (int **,int ,char*) ;
 int git_worktree_prune (int *,int *) ;

void test_worktree_worktree__prune_without_opts_fails(void)
{
 git_worktree *wt;
 git_repository *repo;

 cl_git_pass(git_worktree_lookup(&wt, fixture.repo, "testrepo-worktree"));
 cl_git_fail(git_worktree_prune(wt, ((void*)0)));


 cl_git_pass(git_repository_open_from_worktree(&repo, wt));

 git_worktree_free(wt);
 git_repository_free(repo);
}
