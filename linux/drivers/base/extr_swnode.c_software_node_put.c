
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swnode {int kobj; } ;
struct fwnode_handle {int dummy; } ;


 int kobject_put (int *) ;
 struct swnode* to_swnode (struct fwnode_handle*) ;

__attribute__((used)) static void software_node_put(struct fwnode_handle *fwnode)
{
 struct swnode *swnode = to_swnode(fwnode);

 kobject_put(&swnode->kobj);
}
