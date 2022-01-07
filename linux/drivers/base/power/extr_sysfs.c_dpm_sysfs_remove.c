
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int kobj; } ;


 int dev_pm_qos_constraints_destroy (struct device*) ;
 scalar_t__ device_pm_not_required (struct device*) ;
 int pm_attr_group ;
 int pm_qos_latency_tolerance_attr_group ;
 int pm_wakeup_attr_group ;
 int rpm_sysfs_remove (struct device*) ;
 int sysfs_remove_group (int *,int *) ;
 int sysfs_unmerge_group (int *,int *) ;

void dpm_sysfs_remove(struct device *dev)
{
 if (device_pm_not_required(dev))
  return;
 sysfs_unmerge_group(&dev->kobj, &pm_qos_latency_tolerance_attr_group);
 dev_pm_qos_constraints_destroy(dev);
 rpm_sysfs_remove(dev);
 sysfs_unmerge_group(&dev->kobj, &pm_wakeup_attr_group);
 sysfs_remove_group(&dev->kobj, &pm_attr_group);
}
