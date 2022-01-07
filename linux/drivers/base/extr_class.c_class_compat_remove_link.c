
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int kobj; } ;
struct class_compat {int * kobj; } ;


 char* dev_name (struct device*) ;
 int sysfs_remove_link (int *,char*) ;

void class_compat_remove_link(struct class_compat *cls, struct device *dev,
         struct device *device_link)
{
 if (device_link)
  sysfs_remove_link(&dev->kobj, "device");
 sysfs_remove_link(cls->kobj, dev_name(dev));
}
