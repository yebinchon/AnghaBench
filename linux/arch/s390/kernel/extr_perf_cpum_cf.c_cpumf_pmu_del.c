
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t config_base; } ;
struct perf_event {TYPE_1__ hw; } ;
struct cpu_cf_events {int state; int * ctr_set; } ;


 int PERF_EF_UPDATE ;
 int atomic_read (int *) ;
 int cpu_cf_events ;
 int cpumf_pmu_stop (struct perf_event*,int ) ;
 int ctr_set_disable (int *,size_t) ;
 int perf_event_update_userpage (struct perf_event*) ;
 struct cpu_cf_events* this_cpu_ptr (int *) ;

__attribute__((used)) static void cpumf_pmu_del(struct perf_event *event, int flags)
{
 struct cpu_cf_events *cpuhw = this_cpu_ptr(&cpu_cf_events);

 cpumf_pmu_stop(event, PERF_EF_UPDATE);
 if (!atomic_read(&cpuhw->ctr_set[event->hw.config_base]))
  ctr_set_disable(&cpuhw->state, event->hw.config_base);

 perf_event_update_userpage(event);
}
