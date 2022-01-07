
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int kobj; } ;


 int err_inject_attr_group ;
 struct device* get_cpu_device (unsigned int) ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static int err_inject_remove_dev(unsigned int cpu)
{
 struct device *sys_dev = get_cpu_device(cpu);

 sysfs_remove_group(&sys_dev->kobj, &err_inject_attr_group);
 return 0;
}
