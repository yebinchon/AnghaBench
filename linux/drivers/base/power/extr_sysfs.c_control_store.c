
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int ctrl_auto ;
 int ctrl_on ;
 int device_lock (struct device*) ;
 int device_unlock (struct device*) ;
 int pm_runtime_allow (struct device*) ;
 int pm_runtime_forbid (struct device*) ;
 scalar_t__ sysfs_streq (char const*,int ) ;

__attribute__((used)) static ssize_t control_store(struct device * dev, struct device_attribute *attr,
        const char * buf, size_t n)
{
 device_lock(dev);
 if (sysfs_streq(buf, ctrl_auto))
  pm_runtime_allow(dev);
 else if (sysfs_streq(buf, ctrl_on))
  pm_runtime_forbid(dev);
 else
  n = -EINVAL;
 device_unlock(dev);
 return n;
}
