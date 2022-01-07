
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int attr; } ;
struct device {int kobj; } ;


 int sysfs_remove_file (int *,int *) ;

void device_remove_file(struct device *dev,
   const struct device_attribute *attr)
{
 if (dev)
  sysfs_remove_file(&dev->kobj, &attr->attr);
}
