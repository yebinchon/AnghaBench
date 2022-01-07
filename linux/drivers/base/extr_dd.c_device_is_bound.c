
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {TYPE_1__* p; } ;
struct TYPE_2__ {int knode_driver; } ;


 scalar_t__ klist_node_attached (int *) ;

bool device_is_bound(struct device *dev)
{
 return dev->p && klist_node_attached(&dev->p->knode_driver);
}
