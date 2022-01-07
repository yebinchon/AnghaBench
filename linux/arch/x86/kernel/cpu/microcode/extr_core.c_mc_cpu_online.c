
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int kobj; } ;


 struct device* get_cpu_device (unsigned int) ;
 int mc_attr_group ;
 int pr_err (char*,unsigned int) ;
 scalar_t__ sysfs_create_group (int *,int *) ;

__attribute__((used)) static int mc_cpu_online(unsigned int cpu)
{
 struct device *dev = get_cpu_device(cpu);

 if (sysfs_create_group(&dev->kobj, &mc_attr_group))
  pr_err("Failed to create group for CPU%d\n", cpu);
 return 0;
}
