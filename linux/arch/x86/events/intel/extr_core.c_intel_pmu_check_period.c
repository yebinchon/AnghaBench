
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct perf_event {int dummy; } ;


 int EINVAL ;
 scalar_t__ intel_pmu_has_bts_period (struct perf_event*,int ) ;

__attribute__((used)) static int intel_pmu_check_period(struct perf_event *event, u64 value)
{
 return intel_pmu_has_bts_period(event, value) ? -EINVAL : 0;
}
