
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int kobj; } ;
typedef int ssize_t ;


 int dev_err (struct device*,char*) ;
 int kobject_synth_uevent (int *,char const*,size_t) ;

__attribute__((used)) static ssize_t uevent_store(struct device *dev, struct device_attribute *attr,
       const char *buf, size_t count)
{
 int rc;

 rc = kobject_synth_uevent(&dev->kobj, buf, count);

 if (rc) {
  dev_err(dev, "uevent: failed to send synthetic uevent\n");
  return rc;
 }

 return count;
}
