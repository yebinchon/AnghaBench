
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmu {int dummy; } ;
struct cpu_hw_events {int idx_mask; scalar_t__ n_added; scalar_t__ enabled; } ;


 int PERFMON_CMD_DISABLE ;
 int cpu_hw_events ;
 struct cpu_hw_events* this_cpu_ptr (int *) ;
 int wrperfmon (int ,int ) ;

__attribute__((used)) static void alpha_pmu_disable(struct pmu *pmu)
{
 struct cpu_hw_events *cpuc = this_cpu_ptr(&cpu_hw_events);

 if (!cpuc->enabled)
  return;

 cpuc->enabled = 0;
 cpuc->n_added = 0;

 wrperfmon(PERFMON_CMD_DISABLE, cpuc->idx_mask);
}
