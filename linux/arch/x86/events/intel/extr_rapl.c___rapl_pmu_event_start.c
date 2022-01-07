
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rapl_pmu {int n_active; int active_list; } ;
struct TYPE_2__ {int state; int prev_count; } ;
struct perf_event {TYPE_1__ hw; int active_entry; } ;


 int PERF_HES_STOPPED ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int list_add_tail (int *,int *) ;
 int local64_set (int *,int ) ;
 int rapl_read_counter (struct perf_event*) ;
 int rapl_start_hrtimer (struct rapl_pmu*) ;

__attribute__((used)) static void __rapl_pmu_event_start(struct rapl_pmu *pmu,
       struct perf_event *event)
{
 if (WARN_ON_ONCE(!(event->hw.state & PERF_HES_STOPPED)))
  return;

 event->hw.state = 0;

 list_add_tail(&event->active_entry, &pmu->active_list);

 local64_set(&event->hw.prev_count, rapl_read_counter(event));

 pmu->n_active++;
 if (pmu->n_active == 1)
  rapl_start_hrtimer(pmu);
}
