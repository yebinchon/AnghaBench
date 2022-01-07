
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cpumask_t ;


 int * cpu_possible_mask ;

__attribute__((used)) static cpumask_t cpu_coregroup_map(int cpu)
{




 return *cpu_possible_mask;
}
