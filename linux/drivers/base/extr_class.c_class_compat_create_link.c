
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int kobj; } ;
struct class_compat {int * kobj; } ;


 char* dev_name (struct device*) ;
 int sysfs_create_link (int *,int *,char*) ;
 int sysfs_remove_link (int *,char*) ;

int class_compat_create_link(struct class_compat *cls, struct device *dev,
        struct device *device_link)
{
 int error;

 error = sysfs_create_link(cls->kobj, &dev->kobj, dev_name(dev));
 if (error)
  return error;






 if (device_link) {
  error = sysfs_create_link(&dev->kobj, &device_link->kobj,
       "device");
  if (error)
   sysfs_remove_link(cls->kobj, dev_name(dev));
 }

 return error;
}
