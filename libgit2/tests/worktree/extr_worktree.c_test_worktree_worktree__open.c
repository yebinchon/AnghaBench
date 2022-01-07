
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int git_worktree ;
typedef int git_repository ;
struct TYPE_2__ {int * worktree; int repo; } ;


 int cl_assert_equal_s (int ,int ) ;
 int cl_git_pass (int ) ;
 TYPE_1__ fixture ;
 int git_repository_free (int *) ;
 int git_repository_open_from_worktree (int **,int *) ;
 int git_repository_workdir (int *) ;
 int git_worktree_free (int *) ;
 int git_worktree_lookup (int **,int ,char*) ;

void test_worktree_worktree__open(void)
{
 git_worktree *wt;
 git_repository *repo;

 cl_git_pass(git_worktree_lookup(&wt, fixture.repo, "testrepo-worktree"));

 cl_git_pass(git_repository_open_from_worktree(&repo, wt));
 cl_assert_equal_s(git_repository_workdir(repo),
  git_repository_workdir(fixture.worktree));

 git_repository_free(repo);
 git_worktree_free(wt);
}
