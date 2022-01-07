
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int kobj; } ;


 int dev_attr_mmustat_enable ;
 int device_create_file (struct device*,int *) ;
 int mmu_stat_group ;
 int mmu_stats_supported ;
 int sysfs_create_group (int *,int *) ;

__attribute__((used)) static int register_mmu_stats(struct device *s)
{
 if (!mmu_stats_supported)
  return 0;
 device_create_file(s, &dev_attr_mmustat_enable);
 return sysfs_create_group(&s->kobj, &mmu_stat_group);
}
