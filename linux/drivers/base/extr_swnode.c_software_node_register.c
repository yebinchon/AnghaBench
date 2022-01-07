
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swnode {int dummy; } ;
struct software_node {struct software_node const* parent; } ;


 int EEXIST ;
 int PTR_ERR_OR_ZERO (int ) ;
 struct swnode* software_node_to_swnode (struct software_node const*) ;
 int swnode_register (struct software_node const*,struct swnode*,int ) ;

int software_node_register(const struct software_node *node)
{
 struct swnode *parent = software_node_to_swnode(node->parent);

 if (software_node_to_swnode(node))
  return -EEXIST;

 return PTR_ERR_OR_ZERO(swnode_register(node, parent, 0));
}
