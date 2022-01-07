
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; scalar_t__ exclude_idle; scalar_t__ exclude_hv; int config; } ;
struct perf_event {scalar_t__ cpu; int (* destroy ) (struct perf_event*) ;TYPE_1__ attr; } ;


 int ENODEV ;
 int ENOENT ;
 int EOPNOTSUPP ;
 int PERF_COUNT_HW_CPU_CYCLES ;
 int PERF_EVENT_CPUM_SF ;
 int PERF_EVENT_CPUM_SF_DIAG ;


 int __hw_perf_event_init (struct perf_event*) ;
 int cpu_online (scalar_t__) ;
 scalar_t__ has_branch_stack (struct perf_event*) ;
 int is_sampling_event (struct perf_event*) ;
 int stub1 (struct perf_event*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int cpumsf_pmu_event_init(struct perf_event *event)
{
 int err;


 if (has_branch_stack(event))
  return -EOPNOTSUPP;

 switch (event->attr.type) {
 case 128:
  if ((event->attr.config != PERF_EVENT_CPUM_SF) &&
      (event->attr.config != PERF_EVENT_CPUM_SF_DIAG))
   return -ENOENT;
  break;
 case 129:





  if (event->attr.config != PERF_COUNT_HW_CPU_CYCLES)
   return -ENOENT;
  if (!is_sampling_event(event))
   return -ENOENT;
  break;
 default:
  return -ENOENT;
 }


 if (event->cpu >= 0 && !cpu_online(event->cpu))
  return -ENODEV;




 if (event->attr.exclude_hv)
  event->attr.exclude_hv = 0;
 if (event->attr.exclude_idle)
  event->attr.exclude_idle = 0;

 err = __hw_perf_event_init(event);
 if (unlikely(err))
  if (event->destroy)
   event->destroy(event);
 return err;
}
