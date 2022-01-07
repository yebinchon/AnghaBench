
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int kobj; } ;


 int pm_qos_latency_tolerance_attr_group ;
 int sysfs_unmerge_group (int *,int *) ;

void pm_qos_sysfs_remove_latency_tolerance(struct device *dev)
{
 sysfs_unmerge_group(&dev->kobj, &pm_qos_latency_tolerance_attr_group);
}
