
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmu {int dummy; } ;
struct cpu_hw_events {int enabled; scalar_t__ n_events; int idx_mask; int config; } ;


 int EV67_PCTR_MODE_AGGREGATE ;
 int PERFMON_CMD_DESIRED_EVENTS ;
 int PERFMON_CMD_ENABLE ;
 int PERFMON_CMD_LOGGING_OPTIONS ;
 int barrier () ;
 int cpu_hw_events ;
 int maybe_change_configuration (struct cpu_hw_events*) ;
 struct cpu_hw_events* this_cpu_ptr (int *) ;
 int wrperfmon (int ,int ) ;

__attribute__((used)) static void alpha_pmu_enable(struct pmu *pmu)
{
 struct cpu_hw_events *cpuc = this_cpu_ptr(&cpu_hw_events);

 if (cpuc->enabled)
  return;

 cpuc->enabled = 1;
 barrier();

 if (cpuc->n_events > 0) {

  maybe_change_configuration(cpuc);


  wrperfmon(PERFMON_CMD_LOGGING_OPTIONS, EV67_PCTR_MODE_AGGREGATE);
  wrperfmon(PERFMON_CMD_DESIRED_EVENTS, cpuc->config);
  wrperfmon(PERFMON_CMD_ENABLE, cpuc->idx_mask);
 }
}
