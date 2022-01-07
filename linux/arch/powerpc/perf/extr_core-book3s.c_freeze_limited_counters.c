
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long u64 ;
struct TYPE_2__ {int idx; int prev_count; } ;
struct perf_event {int count; TYPE_1__ hw; } ;
struct cpu_hw_events {int n_limited; struct perf_event** limited_counter; } ;


 unsigned long check_and_compute_delta (unsigned long,unsigned long) ;
 int local64_add (unsigned long,int *) ;
 unsigned long local64_read (int *) ;

__attribute__((used)) static void freeze_limited_counters(struct cpu_hw_events *cpuhw,
        unsigned long pmc5, unsigned long pmc6)
{
 struct perf_event *event;
 u64 val, prev, delta;
 int i;

 for (i = 0; i < cpuhw->n_limited; ++i) {
  event = cpuhw->limited_counter[i];
  if (!event->hw.idx)
   continue;
  val = (event->hw.idx == 5) ? pmc5 : pmc6;
  prev = local64_read(&event->hw.prev_count);
  event->hw.idx = 0;
  delta = check_and_compute_delta(prev, val);
  if (delta)
   local64_add(delta, &event->count);
 }
}
