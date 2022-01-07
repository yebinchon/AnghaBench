
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct perf_event {int dummy; } ;
struct hw_perf_event {int sample_period; int last_period; int prev_count; int period_left; } ;
typedef int s64 ;
struct TYPE_2__ {int (* write_pmc ) (int,int) ;} ;


 int MAX_PERIOD ;
 int local64_read (int *) ;
 int local64_set (int *,int) ;
 int perf_event_update_userpage (struct perf_event*) ;
 TYPE_1__* sparc_pmu ;
 int stub1 (int,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int sparc_perf_event_set_period(struct perf_event *event,
           struct hw_perf_event *hwc, int idx)
{
 s64 left = local64_read(&hwc->period_left);
 s64 period = hwc->sample_period;
 int ret = 0;


 if (unlikely(period != hwc->last_period))
  left = period - (hwc->last_period - left);

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
 if (left > MAX_PERIOD)
  left = MAX_PERIOD;

 local64_set(&hwc->prev_count, (u64)-left);

 sparc_pmu->write_pmc(idx, (u64)(-left) & 0xffffffff);

 perf_event_update_userpage(event);

 return ret;
}
