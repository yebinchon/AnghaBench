
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int dev_name (struct device*) ;
 int sysfs_streq (int ,void const*) ;

int device_match_name(struct device *dev, const void *name)
{
 return sysfs_streq(dev_name(dev), name);
}
