
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int PM_QOS_LATENCY_TOLERANCE_NO_CONSTRAINT ;
 int dev_pm_qos_sysfs_mtx ;
 int dev_pm_qos_update_user_latency_tolerance (struct device*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_qos_sysfs_remove_latency_tolerance (struct device*) ;
 int pm_runtime_get_sync (struct device*) ;
 int pm_runtime_put (struct device*) ;

void dev_pm_qos_hide_latency_tolerance(struct device *dev)
{
 mutex_lock(&dev_pm_qos_sysfs_mtx);
 pm_qos_sysfs_remove_latency_tolerance(dev);
 mutex_unlock(&dev_pm_qos_sysfs_mtx);


 pm_runtime_get_sync(dev);
 dev_pm_qos_update_user_latency_tolerance(dev,
  PM_QOS_LATENCY_TOLERANCE_NO_CONSTRAINT);
 pm_runtime_put(dev);
}
