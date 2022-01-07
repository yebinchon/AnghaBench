
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ worktreename; void* worktree; scalar_t__ reponame; void* repo; } ;
typedef TYPE_1__ worktree_fixture ;


 void* cl_git_sandbox_init (scalar_t__) ;

void setup_fixture_worktree(worktree_fixture *fixture)
{
 if (fixture->reponame)
  fixture->repo = cl_git_sandbox_init(fixture->reponame);
 if (fixture->worktreename)
  fixture->worktree = cl_git_sandbox_init(fixture->worktreename);
}
