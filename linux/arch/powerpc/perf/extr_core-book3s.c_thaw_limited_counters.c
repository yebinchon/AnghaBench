
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long u64 ;
struct TYPE_2__ {int idx; int prev_count; } ;
struct perf_event {TYPE_1__ hw; } ;
struct cpu_hw_events {int n_limited; int* limited_hwidx; struct perf_event** limited_counter; } ;


 scalar_t__ check_and_compute_delta (unsigned long,unsigned long) ;
 unsigned long local64_read (int *) ;
 int local64_set (int *,unsigned long) ;
 int perf_event_update_userpage (struct perf_event*) ;

__attribute__((used)) static void thaw_limited_counters(struct cpu_hw_events *cpuhw,
      unsigned long pmc5, unsigned long pmc6)
{
 struct perf_event *event;
 u64 val, prev;
 int i;

 for (i = 0; i < cpuhw->n_limited; ++i) {
  event = cpuhw->limited_counter[i];
  event->hw.idx = cpuhw->limited_hwidx[i];
  val = (event->hw.idx == 5) ? pmc5 : pmc6;
  prev = local64_read(&event->hw.prev_count);
  if (check_and_compute_delta(prev, val))
   local64_set(&event->hw.prev_count, val);
  perf_event_update_userpage(event);
 }
}
