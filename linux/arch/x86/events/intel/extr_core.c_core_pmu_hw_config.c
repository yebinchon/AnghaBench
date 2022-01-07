
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event {int dummy; } ;


 int intel_pmu_bts_config (struct perf_event*) ;
 int x86_pmu_hw_config (struct perf_event*) ;

__attribute__((used)) static int core_pmu_hw_config(struct perf_event *event)
{
 int ret = x86_pmu_hw_config(event);

 if (ret)
  return ret;

 return intel_pmu_bts_config(event);
}
