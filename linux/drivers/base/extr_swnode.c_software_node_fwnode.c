
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fwnode_handle {int dummy; } ;
struct swnode {struct fwnode_handle fwnode; } ;
struct software_node {int dummy; } ;


 struct swnode* software_node_to_swnode (struct software_node const*) ;

struct fwnode_handle *software_node_fwnode(const struct software_node *node)
{
 struct swnode *swnode = software_node_to_swnode(node);

 return swnode ? &swnode->fwnode : ((void*)0);
}
