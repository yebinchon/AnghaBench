
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct binder_node {int dummy; } ;


 int binder_dec_node_nilocked (struct binder_node*,int,int) ;
 int binder_free_node (struct binder_node*) ;
 int binder_node_inner_lock (struct binder_node*) ;
 int binder_node_inner_unlock (struct binder_node*) ;

__attribute__((used)) static void binder_dec_node(struct binder_node *node, int strong, int internal)
{
 bool free_node;

 binder_node_inner_lock(node);
 free_node = binder_dec_node_nilocked(node, strong, internal);
 binder_node_inner_unlock(node);
 if (free_node)
  binder_free_node(node);
}
