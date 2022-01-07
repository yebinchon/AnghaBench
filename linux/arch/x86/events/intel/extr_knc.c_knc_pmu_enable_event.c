
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct hw_perf_event {scalar_t__ idx; scalar_t__ config_base; int config; } ;
struct perf_event {struct hw_perf_event hw; } ;


 int ARCH_PERFMON_EVENTSEL_ENABLE ;
 int wrmsrl_safe (scalar_t__,int ) ;

__attribute__((used)) static void knc_pmu_enable_event(struct perf_event *event)
{
 struct hw_perf_event *hwc = &event->hw;
 u64 val;

 val = hwc->config;
 val |= ARCH_PERFMON_EVENTSEL_ENABLE;

 (void)wrmsrl_safe(hwc->config_base + hwc->idx, val);
}
