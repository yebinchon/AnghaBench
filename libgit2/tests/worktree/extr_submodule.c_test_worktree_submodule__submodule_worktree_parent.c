
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int is_worktree; } ;
struct TYPE_6__ {TYPE_3__* worktree; TYPE_1__* repo; } ;
struct TYPE_5__ {int is_worktree; } ;


 int cl_assert (int) ;
 int * git_repository_path (TYPE_3__*) ;
 int * git_repository_workdir (TYPE_3__*) ;
 TYPE_2__ parent ;

void test_worktree_submodule__submodule_worktree_parent(void)
{
 cl_assert(git_repository_path(parent.worktree) != ((void*)0));
 cl_assert(git_repository_workdir(parent.worktree) != ((void*)0));

 cl_assert(!parent.repo->is_worktree);
 cl_assert(parent.worktree->is_worktree);
}
