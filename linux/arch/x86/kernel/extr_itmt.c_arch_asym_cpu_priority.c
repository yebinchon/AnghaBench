
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int per_cpu (int ,int) ;
 int sched_core_priority ;

int arch_asym_cpu_priority(int cpu)
{
 return per_cpu(sched_core_priority, cpu);
}
