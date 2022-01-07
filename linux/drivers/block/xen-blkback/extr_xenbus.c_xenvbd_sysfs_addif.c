
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int kobj; } ;
struct xenbus_device {TYPE_1__ dev; } ;


 int dev_attr_mode ;
 int dev_attr_physical_device ;
 int device_create_file (TYPE_1__*,int *) ;
 int device_remove_file (TYPE_1__*,int *) ;
 int sysfs_create_group (int *,int *) ;
 int sysfs_remove_group (int *,int *) ;
 int xen_vbdstat_group ;

__attribute__((used)) static int xenvbd_sysfs_addif(struct xenbus_device *dev)
{
 int error;

 error = device_create_file(&dev->dev, &dev_attr_physical_device);
 if (error)
  goto fail1;

 error = device_create_file(&dev->dev, &dev_attr_mode);
 if (error)
  goto fail2;

 error = sysfs_create_group(&dev->dev.kobj, &xen_vbdstat_group);
 if (error)
  goto fail3;

 return 0;

fail3: sysfs_remove_group(&dev->dev.kobj, &xen_vbdstat_group);
fail2: device_remove_file(&dev->dev, &dev_attr_mode);
fail1: device_remove_file(&dev->dev, &dev_attr_physical_device);
 return error;
}
