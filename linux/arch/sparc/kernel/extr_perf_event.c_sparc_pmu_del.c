
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event {int dummy; } ;
struct cpu_hw_events {int n_events; int * current_idx; int * events; struct perf_event** event; } ;


 int PERF_EF_UPDATE ;
 int cpu_hw_events ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int perf_event_update_userpage (struct perf_event*) ;
 int sparc_pmu_stop (struct perf_event*,int ) ;
 struct cpu_hw_events* this_cpu_ptr (int *) ;

__attribute__((used)) static void sparc_pmu_del(struct perf_event *event, int _flags)
{
 struct cpu_hw_events *cpuc = this_cpu_ptr(&cpu_hw_events);
 unsigned long flags;
 int i;

 local_irq_save(flags);

 for (i = 0; i < cpuc->n_events; i++) {
  if (event == cpuc->event[i]) {



   sparc_pmu_stop(event, PERF_EF_UPDATE);




   while (++i < cpuc->n_events) {
    cpuc->event[i - 1] = cpuc->event[i];
    cpuc->events[i - 1] = cpuc->events[i];
    cpuc->current_idx[i - 1] =
     cpuc->current_idx[i];
   }

   perf_event_update_userpage(event);

   cpuc->n_events--;
   break;
  }
 }

 local_irq_restore(flags);
}
