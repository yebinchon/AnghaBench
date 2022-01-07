
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct hw_perf_event {int config_base; } ;
struct perf_event {struct hw_perf_event hw; } ;


 int P6_NOP_EVENT ;
 int wrmsrl_safe (int ,int ) ;

__attribute__((used)) static inline void
p6_pmu_disable_event(struct perf_event *event)
{
 struct hw_perf_event *hwc = &event->hw;
 u64 val = P6_NOP_EVENT;

 (void)wrmsrl_safe(hwc->config_base, val);
}
