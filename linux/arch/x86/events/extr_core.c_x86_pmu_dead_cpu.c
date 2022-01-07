
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* cpu_dead ) (unsigned int) ;} ;


 int stub1 (unsigned int) ;
 TYPE_1__ x86_pmu ;

__attribute__((used)) static int x86_pmu_dead_cpu(unsigned int cpu)
{
 if (x86_pmu.cpu_dead)
  x86_pmu.cpu_dead(cpu);
 return 0;
}
