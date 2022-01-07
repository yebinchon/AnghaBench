
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct binder_node {int dummy; } ;


 int binder_inc_node_nilocked (struct binder_node*,int,int,struct list_head*) ;
 int binder_node_inner_lock (struct binder_node*) ;
 int binder_node_inner_unlock (struct binder_node*) ;

__attribute__((used)) static int binder_inc_node(struct binder_node *node, int strong, int internal,
      struct list_head *target_list)
{
 int ret;

 binder_node_inner_lock(node);
 ret = binder_inc_node_nilocked(node, strong, internal, target_list);
 binder_node_inner_unlock(node);

 return ret;
}
