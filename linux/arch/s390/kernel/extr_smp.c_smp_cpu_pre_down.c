
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int kobj; } ;
struct TYPE_2__ {struct device dev; } ;


 int cpu_device ;
 int cpu_online_attr_group ;
 TYPE_1__* per_cpu (int ,unsigned int) ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static int smp_cpu_pre_down(unsigned int cpu)
{
 struct device *s = &per_cpu(cpu_device, cpu)->dev;

 sysfs_remove_group(&s->kobj, &cpu_online_attr_group);
 return 0;
}
