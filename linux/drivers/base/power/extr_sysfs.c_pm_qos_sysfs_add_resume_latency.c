
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int kobj; } ;


 int pm_qos_resume_latency_attr_group ;
 int sysfs_merge_group (int *,int *) ;

int pm_qos_sysfs_add_resume_latency(struct device *dev)
{
 return sysfs_merge_group(&dev->kobj, &pm_qos_resume_latency_attr_group);
}
