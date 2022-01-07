
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cpuidle_driver {char* name; } ;
typedef int ssize_t ;


 int cpuidle_driver_lock ;
 struct cpuidle_driver* cpuidle_get_driver () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static ssize_t show_current_driver(struct device *dev,
       struct device_attribute *attr,
       char *buf)
{
 ssize_t ret;
 struct cpuidle_driver *drv;

 spin_lock(&cpuidle_driver_lock);
 drv = cpuidle_get_driver();
 if (drv)
  ret = sprintf(buf, "%s\n", drv->name);
 else
  ret = sprintf(buf, "none\n");
 spin_unlock(&cpuidle_driver_lock);

 return ret;
}
