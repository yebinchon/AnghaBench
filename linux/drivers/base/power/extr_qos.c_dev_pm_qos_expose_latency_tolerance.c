
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int set_latency_tolerance; } ;
struct device {TYPE_1__ power; } ;


 int EINVAL ;
 int dev_pm_qos_sysfs_mtx ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_qos_sysfs_add_latency_tolerance (struct device*) ;

int dev_pm_qos_expose_latency_tolerance(struct device *dev)
{
 int ret;

 if (!dev->power.set_latency_tolerance)
  return -EINVAL;

 mutex_lock(&dev_pm_qos_sysfs_mtx);
 ret = pm_qos_sysfs_add_latency_tolerance(dev);
 mutex_unlock(&dev_pm_qos_sysfs_mtx);

 return ret;
}
