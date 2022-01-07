
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {TYPE_3__* worktree; } ;
struct TYPE_9__ {TYPE_2__* worktree; TYPE_1__* repo; } ;
struct TYPE_8__ {int is_worktree; } ;
struct TYPE_7__ {int is_worktree; } ;
struct TYPE_6__ {int is_worktree; } ;


 TYPE_5__ child ;
 int cl_assert (int) ;
 TYPE_4__ parent ;

void test_worktree_submodule__submodule_worktree_child(void)
{
 cl_assert(!parent.repo->is_worktree);
 cl_assert(parent.worktree->is_worktree);
 cl_assert(child.worktree->is_worktree);
}
