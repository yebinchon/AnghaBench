
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct swnode {int kobj; int id; int entry; TYPE_1__* parent; } ;
struct fwnode_handle {int dummy; } ;
struct TYPE_2__ {int child_ids; } ;


 int ida_simple_remove (int *,int ) ;
 int kobject_put (int *) ;
 int list_del (int *) ;
 int swnode_root_ids ;
 struct swnode* to_swnode (struct fwnode_handle*) ;

void fwnode_remove_software_node(struct fwnode_handle *fwnode)
{
 struct swnode *swnode = to_swnode(fwnode);

 if (!swnode)
  return;

 if (swnode->parent) {
  ida_simple_remove(&swnode->parent->child_ids, swnode->id);
  list_del(&swnode->entry);
 } else {
  ida_simple_remove(&swnode_root_ids, swnode->id);
 }

 kobject_put(&swnode->kobj);
}
