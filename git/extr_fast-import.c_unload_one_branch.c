
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uintmax_t ;
struct TYPE_2__ {int * tree; } ;
struct branch {scalar_t__ last_commit; TYPE_1__ branch_tree; struct branch* active_next_branch; scalar_t__ active; } ;


 scalar_t__ ULONG_MAX ;
 struct branch* active_branches ;
 scalar_t__ cur_active_branches ;
 scalar_t__ max_active_branches ;
 int release_tree_content_recursive (int *) ;

__attribute__((used)) static void unload_one_branch(void)
{
 while (cur_active_branches
  && cur_active_branches >= max_active_branches) {
  uintmax_t min_commit = ULONG_MAX;
  struct branch *e, *l = ((void*)0), *p = ((void*)0);

  for (e = active_branches; e; e = e->active_next_branch) {
   if (e->last_commit < min_commit) {
    p = l;
    min_commit = e->last_commit;
   }
   l = e;
  }

  if (p) {
   e = p->active_next_branch;
   p->active_next_branch = e->active_next_branch;
  } else {
   e = active_branches;
   active_branches = e->active_next_branch;
  }
  e->active = 0;
  e->active_next_branch = ((void*)0);
  if (e->branch_tree.tree) {
   release_tree_content_recursive(e->branch_tree.tree);
   e->branch_tree.tree = ((void*)0);
  }
  cur_active_branches--;
 }
}
