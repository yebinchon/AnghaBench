
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ set_latency_tolerance; } ;
struct device {int kobj; TYPE_1__ power; } ;


 scalar_t__ device_can_wakeup (struct device*) ;
 scalar_t__ device_pm_not_required (struct device*) ;
 int pm_attr_group ;
 int pm_qos_latency_tolerance_attr_group ;
 int pm_runtime_attr_group ;
 scalar_t__ pm_runtime_callbacks_present (struct device*) ;
 int pm_wakeup_attr_group ;
 int pm_wakeup_source_sysfs_add (struct device*) ;
 int sysfs_create_group (int *,int *) ;
 int sysfs_merge_group (int *,int *) ;
 int sysfs_remove_group (int *,int *) ;
 int sysfs_unmerge_group (int *,int *) ;

int dpm_sysfs_add(struct device *dev)
{
 int rc;


 if (device_pm_not_required(dev))
  return 0;

 rc = sysfs_create_group(&dev->kobj, &pm_attr_group);
 if (rc)
  return rc;

 if (pm_runtime_callbacks_present(dev)) {
  rc = sysfs_merge_group(&dev->kobj, &pm_runtime_attr_group);
  if (rc)
   goto err_out;
 }
 if (device_can_wakeup(dev)) {
  rc = sysfs_merge_group(&dev->kobj, &pm_wakeup_attr_group);
  if (rc)
   goto err_runtime;
 }
 if (dev->power.set_latency_tolerance) {
  rc = sysfs_merge_group(&dev->kobj,
           &pm_qos_latency_tolerance_attr_group);
  if (rc)
   goto err_wakeup;
 }
 rc = pm_wakeup_source_sysfs_add(dev);
 if (rc)
  goto err_latency;
 return 0;

 err_latency:
 sysfs_unmerge_group(&dev->kobj, &pm_qos_latency_tolerance_attr_group);
 err_wakeup:
 sysfs_unmerge_group(&dev->kobj, &pm_wakeup_attr_group);
 err_runtime:
 sysfs_unmerge_group(&dev->kobj, &pm_runtime_attr_group);
 err_out:
 sysfs_remove_group(&dev->kobj, &pm_attr_group);
 return rc;
}
