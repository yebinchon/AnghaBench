
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_event {int dummy; } ;
struct hw_perf_event {long sample_period; long last_period; int prev_count; int period_left; } ;
struct TYPE_2__ {long* pmc_left; long* pmc_max_period; } ;


 TYPE_1__* alpha_pmu ;
 int alpha_write_pmc (int,unsigned long) ;
 long local64_read (int *) ;
 int local64_set (int *,unsigned long) ;
 int perf_event_update_userpage (struct perf_event*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int alpha_perf_event_set_period(struct perf_event *event,
    struct hw_perf_event *hwc, int idx)
{
 long left = local64_read(&hwc->period_left);
 long period = hwc->sample_period;
 int ret = 0;

 if (unlikely(left <= -period)) {
  left = period;
  local64_set(&hwc->period_left, left);
  hwc->last_period = period;
  ret = 1;
 }

 if (unlikely(left <= 0)) {
  left += period;
  local64_set(&hwc->period_left, left);
  hwc->last_period = period;
  ret = 1;
 }





 if (unlikely(left < alpha_pmu->pmc_left[idx]))
  left = alpha_pmu->pmc_left[idx];

 if (left > (long)alpha_pmu->pmc_max_period[idx])
  left = alpha_pmu->pmc_max_period[idx];

 local64_set(&hwc->prev_count, (unsigned long)(-left));

 alpha_write_pmc(idx, (unsigned long)(-left));

 perf_event_update_userpage(event);

 return ret;
}
