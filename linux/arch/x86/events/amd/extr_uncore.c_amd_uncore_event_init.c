
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ type; int config; } ;
struct hw_perf_event {int config; int idx; } ;
struct perf_event {int attach_state; int cpu; TYPE_2__ attr; TYPE_1__* pmu; struct hw_perf_event hw; } ;
struct amd_uncore {int cpu; } ;
struct TYPE_6__ {int cpu_core_id; int apicid; } ;
struct TYPE_4__ {scalar_t__ type; } ;


 unsigned long long AMD64_L3_SLICE_MASK ;
 int AMD64_L3_THREAD_MASK ;
 int AMD64_L3_THREAD_SHIFT ;
 int AMD64_RAW_EVENT_MASK_NB ;
 int EINVAL ;
 int ENODEV ;
 int ENOENT ;
 int PERF_ATTACH_TASK ;
 TYPE_3__ cpu_data (int ) ;
 struct amd_uncore* event_to_amd_uncore (struct perf_event*) ;
 scalar_t__ is_llc_event (struct perf_event*) ;
 scalar_t__ is_sampling_event (struct perf_event*) ;
 scalar_t__ l3_mask ;
 int smp_num_siblings ;

__attribute__((used)) static int amd_uncore_event_init(struct perf_event *event)
{
 struct amd_uncore *uncore;
 struct hw_perf_event *hwc = &event->hw;

 if (event->attr.type != event->pmu->type)
  return -ENOENT;
 if (is_sampling_event(event) || event->attach_state & PERF_ATTACH_TASK)
  return -EINVAL;


 hwc->config = event->attr.config & AMD64_RAW_EVENT_MASK_NB;
 hwc->idx = -1;

 if (event->cpu < 0)
  return -EINVAL;





 if (l3_mask && is_llc_event(event)) {
  int thread = 2 * (cpu_data(event->cpu).cpu_core_id % 4);

  if (smp_num_siblings > 1)
   thread += cpu_data(event->cpu).apicid & 1;

  hwc->config |= (1ULL << (AMD64_L3_THREAD_SHIFT + thread) &
    AMD64_L3_THREAD_MASK) | AMD64_L3_SLICE_MASK;
 }

 uncore = event_to_amd_uncore(event);
 if (!uncore)
  return -ENODEV;





 event->cpu = uncore->cpu;

 return 0;
}
