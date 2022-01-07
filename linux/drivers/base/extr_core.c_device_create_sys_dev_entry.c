
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct device {int kobj; int devt; } ;


 struct kobject* device_to_dev_kobj (struct device*) ;
 int format_dev_t (char*,int ) ;
 int sysfs_create_link (struct kobject*,int *,char*) ;

__attribute__((used)) static int device_create_sys_dev_entry(struct device *dev)
{
 struct kobject *kobj = device_to_dev_kobj(dev);
 int error = 0;
 char devt_str[15];

 if (kobj) {
  format_dev_t(devt_str, dev->devt);
  error = sysfs_create_link(kobj, &dev->kobj, devt_str);
 }

 return error;
}
