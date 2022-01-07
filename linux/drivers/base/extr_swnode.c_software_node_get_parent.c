
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct swnode {TYPE_1__* parent; } ;
struct fwnode_handle {int dummy; } ;
struct TYPE_2__ {struct fwnode_handle fwnode; } ;


 struct swnode* to_swnode (struct fwnode_handle const*) ;

__attribute__((used)) static struct fwnode_handle *
software_node_get_parent(const struct fwnode_handle *fwnode)
{
 struct swnode *swnode = to_swnode(fwnode);

 return swnode ? (swnode->parent ? &swnode->parent->fwnode : ((void*)0)) : ((void*)0);
}
