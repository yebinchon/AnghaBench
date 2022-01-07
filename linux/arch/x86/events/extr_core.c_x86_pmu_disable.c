
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pmu {int dummy; } ;
struct cpu_hw_events {scalar_t__ enabled; scalar_t__ n_added; } ;
struct TYPE_2__ {int (* disable_all ) () ;} ;


 int barrier () ;
 int cpu_hw_events ;
 int stub1 () ;
 struct cpu_hw_events* this_cpu_ptr (int *) ;
 TYPE_1__ x86_pmu ;
 int x86_pmu_initialized () ;

__attribute__((used)) static void x86_pmu_disable(struct pmu *pmu)
{
 struct cpu_hw_events *cpuc = this_cpu_ptr(&cpu_hw_events);

 if (!x86_pmu_initialized())
  return;

 if (!cpuc->enabled)
  return;

 cpuc->n_added = 0;
 cpuc->enabled = 0;
 barrier();

 x86_pmu.disable_all();
}
