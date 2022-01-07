
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_event {int count; } ;
struct hw_perf_event {int period_left; int prev_count; } ;
struct TYPE_2__ {long* pmc_count_mask; scalar_t__* pmc_max_period; } ;


 TYPE_1__* alpha_pmu ;
 long alpha_read_pmc (int) ;
 int local64_add (long,int *) ;
 long local64_cmpxchg (int *,long,long) ;
 long local64_read (int *) ;
 int local64_sub (long,int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static unsigned long alpha_perf_event_update(struct perf_event *event,
     struct hw_perf_event *hwc, int idx, long ovf)
{
 long prev_raw_count, new_raw_count;
 long delta;

again:
 prev_raw_count = local64_read(&hwc->prev_count);
 new_raw_count = alpha_read_pmc(idx);

 if (local64_cmpxchg(&hwc->prev_count, prev_raw_count,
        new_raw_count) != prev_raw_count)
  goto again;

 delta = (new_raw_count - (prev_raw_count & alpha_pmu->pmc_count_mask[idx])) + ovf;




 if (unlikely(delta < 0)) {
  delta += alpha_pmu->pmc_max_period[idx] + 1;
 }

 local64_add(delta, &event->count);
 local64_sub(delta, &hwc->period_left);

 return new_raw_count;
}
