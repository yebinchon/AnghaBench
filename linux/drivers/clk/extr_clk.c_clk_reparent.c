
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_core {int orphan; struct clk_core* parent; int child_node; int children; struct clk_core* new_child; } ;


 int clk_core_update_orphan_status (struct clk_core*,int) ;
 int clk_orphan_list ;
 int hlist_add_head (int *,int *) ;
 int hlist_del (int *) ;

__attribute__((used)) static void clk_reparent(struct clk_core *core, struct clk_core *new_parent)
{
 bool was_orphan = core->orphan;

 hlist_del(&core->child_node);

 if (new_parent) {
  bool becomes_orphan = new_parent->orphan;


  if (new_parent->new_child == core)
   new_parent->new_child = ((void*)0);

  hlist_add_head(&core->child_node, &new_parent->children);

  if (was_orphan != becomes_orphan)
   clk_core_update_orphan_status(core, becomes_orphan);
 } else {
  hlist_add_head(&core->child_node, &clk_orphan_list);
  if (!was_orphan)
   clk_core_update_orphan_status(core, 1);
 }

 core->parent = new_parent;
}
