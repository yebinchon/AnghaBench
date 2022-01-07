
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmu {int dummy; } ;
struct cpu_cf_events {int flags; int state; } ;


 int PMU_F_ENABLED ;
 int cpu_cf_events ;
 int lcctl (int ) ;
 int pr_err (char*,int) ;
 struct cpu_cf_events* this_cpu_ptr (int *) ;

__attribute__((used)) static void cpumf_pmu_enable(struct pmu *pmu)
{
 struct cpu_cf_events *cpuhw = this_cpu_ptr(&cpu_cf_events);
 int err;

 if (cpuhw->flags & PMU_F_ENABLED)
  return;

 err = lcctl(cpuhw->state);
 if (err) {
  pr_err("Enabling the performance measuring unit "
         "failed with rc=%x\n", err);
  return;
 }

 cpuhw->flags |= PMU_F_ENABLED;
}
