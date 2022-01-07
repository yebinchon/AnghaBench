
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int state; int config_base; } ;
struct perf_event {TYPE_1__ hw; } ;
struct cpu_cf_events {int txn_flags; int state; } ;


 int ENOENT ;
 int PERF_EF_RELOAD ;
 int PERF_EF_START ;
 int PERF_HES_STOPPED ;
 int PERF_HES_UPTODATE ;
 int PERF_PMU_TXN_ADD ;
 int cpu_cf_events ;
 int cpumf_pmu_start (struct perf_event*,int ) ;
 int ctr_set_enable (int *,int ) ;
 int perf_event_update_userpage (struct perf_event*) ;
 struct cpu_cf_events* this_cpu_ptr (int *) ;
 scalar_t__ validate_ctr_auth (TYPE_1__*) ;

__attribute__((used)) static int cpumf_pmu_add(struct perf_event *event, int flags)
{
 struct cpu_cf_events *cpuhw = this_cpu_ptr(&cpu_cf_events);






 if (!(cpuhw->txn_flags & PERF_PMU_TXN_ADD))
  if (validate_ctr_auth(&event->hw))
   return -ENOENT;

 ctr_set_enable(&cpuhw->state, event->hw.config_base);
 event->hw.state = PERF_HES_UPTODATE | PERF_HES_STOPPED;

 if (flags & PERF_EF_START)
  cpumf_pmu_start(event, PERF_EF_RELOAD);

 perf_event_update_userpage(event);

 return 0;
}
