
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct subsys_dev_iter {scalar_t__ type; int ki; } ;
struct klist_node {int dummy; } ;
struct device {scalar_t__ type; } ;
struct TYPE_2__ {struct device* device; } ;


 struct klist_node* klist_next (int *) ;
 TYPE_1__* to_device_private_bus (struct klist_node*) ;

struct device *subsys_dev_iter_next(struct subsys_dev_iter *iter)
{
 struct klist_node *knode;
 struct device *dev;

 for (;;) {
  knode = klist_next(&iter->ki);
  if (!knode)
   return ((void*)0);
  dev = to_device_private_bus(knode)->device;
  if (!iter->type || iter->type == dev->type)
   return dev;
 }
}
