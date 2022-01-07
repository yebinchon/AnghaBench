
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int kobj; } ;
struct bin_attribute {int dummy; } ;


 int sysfs_remove_bin_file (int *,struct bin_attribute const*) ;

void device_remove_bin_file(struct device *dev,
       const struct bin_attribute *attr)
{
 if (dev)
  sysfs_remove_bin_file(&dev->kobj, attr);
}
