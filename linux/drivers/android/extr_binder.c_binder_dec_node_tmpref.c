
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct binder_node {scalar_t__ tmp_refs; int proc; } ;


 int BUG_ON (int) ;
 int __acquire (int *) ;
 int __release (int *) ;
 int binder_dead_nodes_lock ;
 int binder_dec_node_nilocked (struct binder_node*,int ,int) ;
 int binder_free_node (struct binder_node*) ;
 int binder_node_inner_lock (struct binder_node*) ;
 int binder_node_inner_unlock (struct binder_node*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void binder_dec_node_tmpref(struct binder_node *node)
{
 bool free_node;

 binder_node_inner_lock(node);
 if (!node->proc)
  spin_lock(&binder_dead_nodes_lock);
 else
  __acquire(&binder_dead_nodes_lock);
 node->tmp_refs--;
 BUG_ON(node->tmp_refs < 0);
 if (!node->proc)
  spin_unlock(&binder_dead_nodes_lock);
 else
  __release(&binder_dead_nodes_lock);






 free_node = binder_dec_node_nilocked(node, 0, 1);
 binder_node_inner_unlock(node);
 if (free_node)
  binder_free_node(node);
}
