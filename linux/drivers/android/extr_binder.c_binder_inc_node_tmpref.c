
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct binder_node {scalar_t__ proc; } ;


 int binder_dead_nodes_lock ;
 int binder_inc_node_tmpref_ilocked (struct binder_node*) ;
 int binder_inner_proc_lock (scalar_t__) ;
 int binder_inner_proc_unlock (scalar_t__) ;
 int binder_node_lock (struct binder_node*) ;
 int binder_node_unlock (struct binder_node*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void binder_inc_node_tmpref(struct binder_node *node)
{
 binder_node_lock(node);
 if (node->proc)
  binder_inner_proc_lock(node->proc);
 else
  spin_lock(&binder_dead_nodes_lock);
 binder_inc_node_tmpref_ilocked(node);
 if (node->proc)
  binder_inner_proc_unlock(node->proc);
 else
  spin_unlock(&binder_dead_nodes_lock);
 binder_node_unlock(node);
}
