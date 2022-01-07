
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct branch {int active; struct branch* active_next_branch; int branch_tree; } ;


 struct branch* active_branches ;
 int branch_load_count ;
 int cur_active_branches ;
 int load_tree (int *) ;

__attribute__((used)) static void load_branch(struct branch *b)
{
 load_tree(&b->branch_tree);
 if (!b->active) {
  b->active = 1;
  b->active_next_branch = active_branches;
  active_branches = b;
  cur_active_branches++;
  branch_load_count++;
 }
}
