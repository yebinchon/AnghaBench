
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fwnode_handle {int dummy; } ;
struct swnode {struct fwnode_handle fwnode; int kobj; } ;


 int kobject_get (int *) ;
 struct swnode* to_swnode (struct fwnode_handle*) ;

__attribute__((used)) static struct fwnode_handle *software_node_get(struct fwnode_handle *fwnode)
{
 struct swnode *swnode = to_swnode(fwnode);

 kobject_get(&swnode->kobj);

 return &swnode->fwnode;
}
