
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ cpu_online (int) ;
 int cpu_online_mask ;
 int cpumask_first (int ) ;
 unsigned int num_online_cpus () ;
 int num_possible_cpus () ;

__attribute__((used)) static int simple_map_to_cpu(unsigned int index)
{
 int i, end, cpu_rover;

 cpu_rover = 0;
 end = index % num_online_cpus();
 for (i = 0; i < num_possible_cpus(); i++) {
  if (cpu_online(cpu_rover)) {
   if (cpu_rover >= end)
    return cpu_rover;

   cpu_rover++;
  }
 }


 return cpumask_first(cpu_online_mask);
}
