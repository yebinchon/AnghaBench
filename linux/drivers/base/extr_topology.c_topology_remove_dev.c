
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int kobj; } ;


 struct device* get_cpu_device (unsigned int) ;
 int sysfs_remove_group (int *,int *) ;
 int topology_attr_group ;

__attribute__((used)) static int topology_remove_dev(unsigned int cpu)
{
 struct device *dev = get_cpu_device(cpu);

 sysfs_remove_group(&dev->kobj, &topology_attr_group);
 return 0;
}
