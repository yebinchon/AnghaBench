
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int kobj; } ;


 int cpuhp_tasks_frozen ;
 struct device* get_cpu_device (unsigned int) ;
 int intel_epb_attr_group ;
 int intel_epb_restore () ;
 int sysfs_merge_group (int *,int *) ;

__attribute__((used)) static int intel_epb_online(unsigned int cpu)
{
 struct device *cpu_dev = get_cpu_device(cpu);

 intel_epb_restore();
 if (!cpuhp_tasks_frozen)
  sysfs_merge_group(&cpu_dev->kobj, &intel_epb_attr_group);

 return 0;
}
