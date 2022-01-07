
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int kobj; } ;


 struct device* get_cpu_device (unsigned int) ;
 int mc_attr_group ;
 int pr_debug (char*,unsigned int) ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static int mc_cpu_down_prep(unsigned int cpu)
{
 struct device *dev;

 dev = get_cpu_device(cpu);

 sysfs_remove_group(&dev->kobj, &mc_attr_group);
 pr_debug("CPU%d removed\n", cpu);

 return 0;
}
