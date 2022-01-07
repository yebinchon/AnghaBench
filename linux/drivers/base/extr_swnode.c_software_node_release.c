
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swnode {int child_ids; struct swnode* node; int properties; scalar_t__ allocated; } ;
struct kobject {int dummy; } ;


 int ida_destroy (int *) ;
 int kfree (struct swnode*) ;
 struct swnode* kobj_to_swnode (struct kobject*) ;
 int property_entries_free (int ) ;

__attribute__((used)) static void software_node_release(struct kobject *kobj)
{
 struct swnode *swnode = kobj_to_swnode(kobj);

 if (swnode->allocated) {
  property_entries_free(swnode->node->properties);
  kfree(swnode->node);
 }
 ida_destroy(&swnode->child_ids);
 kfree(swnode);
}
