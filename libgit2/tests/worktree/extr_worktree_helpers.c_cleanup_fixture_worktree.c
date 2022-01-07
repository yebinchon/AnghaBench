
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ worktreename; scalar_t__ reponame; int * worktree; int * repo; } ;
typedef TYPE_1__ worktree_fixture ;


 int cl_fixture_cleanup (scalar_t__) ;
 int git_repository_free (int *) ;

void cleanup_fixture_worktree(worktree_fixture *fixture)
{
 if (!fixture)
  return;

 if (fixture->repo) {
  git_repository_free(fixture->repo);
  fixture->repo = ((void*)0);
 }
 if (fixture->worktree) {
  git_repository_free(fixture->worktree);
  fixture->worktree = ((void*)0);
 }

 if (fixture->reponame)
  cl_fixture_cleanup(fixture->reponame);
 if (fixture->worktreename)
  cl_fixture_cleanup(fixture->worktreename);
}
