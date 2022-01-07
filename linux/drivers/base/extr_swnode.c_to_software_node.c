
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swnode {struct software_node const* node; } ;
struct software_node {int dummy; } ;
struct fwnode_handle {int dummy; } ;


 struct swnode* to_swnode (struct fwnode_handle*) ;

const struct software_node *to_software_node(struct fwnode_handle *fwnode)
{
 struct swnode *swnode = to_swnode(fwnode);

 return swnode ? swnode->node : ((void*)0);
}
