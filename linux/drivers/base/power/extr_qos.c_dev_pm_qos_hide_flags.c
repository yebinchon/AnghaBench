
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int __dev_pm_qos_hide_flags (struct device*) ;
 int dev_pm_qos_mtx ;
 int dev_pm_qos_sysfs_mtx ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_qos_sysfs_remove_flags (struct device*) ;
 int pm_runtime_get_sync (struct device*) ;
 int pm_runtime_put (struct device*) ;

void dev_pm_qos_hide_flags(struct device *dev)
{
 pm_runtime_get_sync(dev);
 mutex_lock(&dev_pm_qos_sysfs_mtx);

 pm_qos_sysfs_remove_flags(dev);

 mutex_lock(&dev_pm_qos_mtx);
 __dev_pm_qos_hide_flags(dev);
 mutex_unlock(&dev_pm_qos_mtx);

 mutex_unlock(&dev_pm_qos_sysfs_mtx);
 pm_runtime_put(dev);
}
