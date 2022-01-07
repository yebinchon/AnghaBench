
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int __dev_pm_qos_hide_latency_limit (struct device*) ;
 int dev_pm_qos_mtx ;
 int dev_pm_qos_sysfs_mtx ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_qos_sysfs_remove_resume_latency (struct device*) ;

void dev_pm_qos_hide_latency_limit(struct device *dev)
{
 mutex_lock(&dev_pm_qos_sysfs_mtx);

 pm_qos_sysfs_remove_resume_latency(dev);

 mutex_lock(&dev_pm_qos_mtx);
 __dev_pm_qos_hide_latency_limit(dev);
 mutex_unlock(&dev_pm_qos_mtx);

 mutex_unlock(&dev_pm_qos_sysfs_mtx);
}
