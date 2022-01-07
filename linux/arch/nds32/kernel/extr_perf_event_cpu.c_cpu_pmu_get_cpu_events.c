
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmu_hw_events {int dummy; } ;


 int cpu_hw_events ;
 struct pmu_hw_events* this_cpu_ptr (int *) ;

__attribute__((used)) static struct pmu_hw_events *cpu_pmu_get_cpu_events(void)
{
 return this_cpu_ptr(&cpu_hw_events);
}
