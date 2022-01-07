
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct perf_event_attr {int dummy; } ;
struct hw_perf_event {int idx; } ;
struct perf_event {struct perf_event_attr attr; struct hw_perf_event hw; } ;


 int ARMV8_IDX_TO_COUNTER (int) ;
 int BIT (int ) ;
 int armv8pmu_disable_counter (int) ;
 scalar_t__ armv8pmu_event_is_chained (struct perf_event*) ;
 int kvm_clr_pmu_events (int ) ;
 int kvm_pmu_counter_deferred (struct perf_event_attr*) ;

__attribute__((used)) static inline void armv8pmu_disable_event_counter(struct perf_event *event)
{
 struct hw_perf_event *hwc = &event->hw;
 struct perf_event_attr *attr = &event->attr;
 int idx = hwc->idx;
 u32 counter_bits = BIT(ARMV8_IDX_TO_COUNTER(idx));

 if (armv8pmu_event_is_chained(event))
  counter_bits |= BIT(ARMV8_IDX_TO_COUNTER(idx - 1));

 kvm_clr_pmu_events(counter_bits);


 if (!kvm_pmu_counter_deferred(attr)) {
  if (armv8pmu_event_is_chained(event))
   armv8pmu_disable_counter(idx - 1);
  armv8pmu_disable_counter(idx);
 }
}
