
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rb_node {struct rb_node* rb_left; struct rb_node* rb_right; } ;


 int bfq_update_active_node (struct rb_node*) ;
 struct rb_node* rb_parent (struct rb_node*) ;

__attribute__((used)) static void bfq_update_active_tree(struct rb_node *node)
{
 struct rb_node *parent;

up:
 bfq_update_active_node(node);

 parent = rb_parent(node);
 if (!parent)
  return;

 if (node == parent->rb_left && parent->rb_right)
  bfq_update_active_node(parent->rb_right);
 else if (parent->rb_left)
  bfq_update_active_node(parent->rb_left);

 node = parent;
 goto up;
}
