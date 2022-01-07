
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 scalar_t__ cpu_possible (unsigned int) ;
 int cpu_sys_devices ;
 unsigned int nr_cpu_ids ;
 struct device* per_cpu (int ,unsigned int) ;

struct device *get_cpu_device(unsigned cpu)
{
 if (cpu < nr_cpu_ids && cpu_possible(cpu))
  return per_cpu(cpu_sys_devices, cpu);
 else
  return ((void*)0);
}
