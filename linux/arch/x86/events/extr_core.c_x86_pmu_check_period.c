
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct perf_event {int dummy; } ;
struct TYPE_2__ {scalar_t__ (* limit_period ) (struct perf_event*,scalar_t__) ;scalar_t__ (* check_period ) (struct perf_event*,scalar_t__) ;} ;


 int EINVAL ;
 scalar_t__ stub1 (struct perf_event*,scalar_t__) ;
 scalar_t__ stub2 (struct perf_event*,scalar_t__) ;
 TYPE_1__ x86_pmu ;

__attribute__((used)) static int x86_pmu_check_period(struct perf_event *event, u64 value)
{
 if (x86_pmu.check_period && x86_pmu.check_period(event, value))
  return -EINVAL;

 if (value && x86_pmu.limit_period) {
  if (x86_pmu.limit_period(event, value) > value)
   return -EINVAL;
 }

 return 0;
}
