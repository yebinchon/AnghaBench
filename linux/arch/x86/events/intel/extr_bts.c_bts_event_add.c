
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hw_perf_event {int state; } ;
struct perf_event {struct hw_perf_event hw; } ;
struct cpu_hw_events {int active_mask; } ;
struct TYPE_2__ {scalar_t__ event; } ;
struct bts_ctx {TYPE_1__ handle; } ;


 int EBUSY ;
 int EINVAL ;
 int INTEL_PMC_IDX_FIXED_BTS ;
 int PERF_EF_START ;
 int PERF_HES_STOPPED ;
 int bts_ctx ;
 int bts_event_start (struct perf_event*,int ) ;
 int cpu_hw_events ;
 scalar_t__ test_bit (int ,int ) ;
 void* this_cpu_ptr (int *) ;

__attribute__((used)) static int bts_event_add(struct perf_event *event, int mode)
{
 struct bts_ctx *bts = this_cpu_ptr(&bts_ctx);
 struct cpu_hw_events *cpuc = this_cpu_ptr(&cpu_hw_events);
 struct hw_perf_event *hwc = &event->hw;

 event->hw.state = PERF_HES_STOPPED;

 if (test_bit(INTEL_PMC_IDX_FIXED_BTS, cpuc->active_mask))
  return -EBUSY;

 if (bts->handle.event)
  return -EBUSY;

 if (mode & PERF_EF_START) {
  bts_event_start(event, 0);
  if (hwc->state & PERF_HES_STOPPED)
   return -EINVAL;
 }

 return 0;
}
