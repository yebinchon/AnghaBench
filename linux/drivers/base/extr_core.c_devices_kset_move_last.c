
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int entry; } ;
struct device {TYPE_1__ kobj; } ;
struct TYPE_4__ {int list_lock; int list; } ;


 int dev_name (struct device*) ;
 TYPE_2__* devices_kset ;
 int list_move_tail (int *,int *) ;
 int pr_debug (char*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void devices_kset_move_last(struct device *dev)
{
 if (!devices_kset)
  return;
 pr_debug("devices_kset: Moving %s to end of list\n", dev_name(dev));
 spin_lock(&devices_kset->list_lock);
 list_move_tail(&dev->kobj.entry, &devices_kset->list);
 spin_unlock(&devices_kset->list_lock);
}
