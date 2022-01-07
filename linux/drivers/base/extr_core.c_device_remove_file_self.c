
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int attr; } ;
struct device {int kobj; } ;


 int sysfs_remove_file_self (int *,int *) ;

bool device_remove_file_self(struct device *dev,
        const struct device_attribute *attr)
{
 if (dev)
  return sysfs_remove_file_self(&dev->kobj, &attr->attr);
 else
  return 0;
}
