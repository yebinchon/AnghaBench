
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kobj; } ;
struct xenbus_device {TYPE_1__ dev; } ;


 int dev_attr_mode ;
 int dev_attr_physical_device ;
 int device_remove_file (TYPE_1__*,int *) ;
 int sysfs_remove_group (int *,int *) ;
 int xen_vbdstat_group ;

__attribute__((used)) static void xenvbd_sysfs_delif(struct xenbus_device *dev)
{
 sysfs_remove_group(&dev->dev.kobj, &xen_vbdstat_group);
 device_remove_file(&dev->dev, &dev_attr_mode);
 device_remove_file(&dev->dev, &dev_attr_physical_device);
}
