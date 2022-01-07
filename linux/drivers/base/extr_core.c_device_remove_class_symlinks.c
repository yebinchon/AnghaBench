
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct device {int kobj; TYPE_3__* class; scalar_t__ parent; } ;
struct TYPE_6__ {TYPE_2__* p; } ;
struct TYPE_4__ {int kobj; } ;
struct TYPE_5__ {TYPE_1__ subsys; } ;


 TYPE_3__ block_class ;
 int dev_name (struct device*) ;
 scalar_t__ dev_of_node (struct device*) ;
 scalar_t__ device_is_not_partition (struct device*) ;
 int sysfs_delete_link (int *,int *,int ) ;
 scalar_t__ sysfs_deprecated ;
 int sysfs_remove_link (int *,char*) ;

__attribute__((used)) static void device_remove_class_symlinks(struct device *dev)
{
 if (dev_of_node(dev))
  sysfs_remove_link(&dev->kobj, "of_node");

 if (!dev->class)
  return;

 if (dev->parent && device_is_not_partition(dev))
  sysfs_remove_link(&dev->kobj, "device");
 sysfs_remove_link(&dev->kobj, "subsystem");




 sysfs_delete_link(&dev->class->p->subsys.kobj, &dev->kobj, dev_name(dev));
}
