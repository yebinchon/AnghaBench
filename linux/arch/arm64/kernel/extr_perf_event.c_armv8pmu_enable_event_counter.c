
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct perf_event_attr {int dummy; } ;
struct TYPE_2__ {int idx; } ;
struct perf_event {TYPE_1__ hw; struct perf_event_attr attr; } ;


 int ARMV8_IDX_TO_COUNTER (int) ;
 int BIT (int ) ;
 int armv8pmu_enable_counter (int) ;
 scalar_t__ armv8pmu_event_is_chained (struct perf_event*) ;
 int kvm_pmu_counter_deferred (struct perf_event_attr*) ;
 int kvm_set_pmu_events (int ,struct perf_event_attr*) ;

__attribute__((used)) static inline void armv8pmu_enable_event_counter(struct perf_event *event)
{
 struct perf_event_attr *attr = &event->attr;
 int idx = event->hw.idx;
 u32 counter_bits = BIT(ARMV8_IDX_TO_COUNTER(idx));

 if (armv8pmu_event_is_chained(event))
  counter_bits |= BIT(ARMV8_IDX_TO_COUNTER(idx - 1));

 kvm_set_pmu_events(counter_bits, attr);


 if (!kvm_pmu_counter_deferred(attr)) {
  armv8pmu_enable_counter(idx);
  if (armv8pmu_event_is_chained(event))
   armv8pmu_enable_counter(idx - 1);
 }
}
