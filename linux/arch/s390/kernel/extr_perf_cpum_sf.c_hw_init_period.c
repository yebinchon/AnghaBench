
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct hw_perf_event {int sample_period; int period_left; int last_period; } ;


 int local64_set (int *,int ) ;

__attribute__((used)) static void hw_init_period(struct hw_perf_event *hwc, u64 period)
{
 hwc->sample_period = period;
 hwc->last_period = hwc->sample_period;
 local64_set(&hwc->period_left, hwc->sample_period);
}
