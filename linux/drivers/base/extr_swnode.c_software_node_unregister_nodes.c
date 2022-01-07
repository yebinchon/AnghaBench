
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swnode {int fwnode; } ;
struct software_node {scalar_t__ name; } ;


 int fwnode_remove_software_node (int *) ;
 struct swnode* software_node_to_swnode (struct software_node const*) ;

void software_node_unregister_nodes(const struct software_node *nodes)
{
 struct swnode *swnode;
 int i;

 for (i = 0; nodes[i].name; i++) {
  swnode = software_node_to_swnode(&nodes[i]);
  if (swnode)
   fwnode_remove_software_node(&swnode->fwnode);
 }
}
