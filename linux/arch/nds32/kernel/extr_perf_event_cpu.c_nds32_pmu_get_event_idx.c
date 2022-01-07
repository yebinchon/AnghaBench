
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmu_hw_events {int used_mask; } ;
struct hw_perf_event {unsigned long config_base; } ;
struct perf_event {struct hw_perf_event hw; } ;


 int EAGAIN ;
 int NDS32_IDX_COUNTER0 ;
 int NDS32_IDX_COUNTER1 ;
 int NDS32_IDX_CYCLE_COUNTER ;
 unsigned long SOFTWARE_EVENT_MASK ;
 unsigned long SPAV3_0_SEL_TOTAL_CYCLES ;
 unsigned long SPAV3_1_SEL_COMPLETED_INSTRUCTION ;
 int get_converted_event_idx (unsigned long) ;
 int test_and_set_bit (int,int ) ;

__attribute__((used)) static int nds32_pmu_get_event_idx(struct pmu_hw_events *cpuc,
       struct perf_event *event)
{
 int idx;
 struct hw_perf_event *hwc = &event->hw;
 unsigned long evtype = hwc->config_base & SOFTWARE_EVENT_MASK;

 idx = get_converted_event_idx(evtype);



 if (evtype == SPAV3_0_SEL_TOTAL_CYCLES) {
  if (!test_and_set_bit(idx, cpuc->used_mask))
   return idx;
  if (!test_and_set_bit(NDS32_IDX_COUNTER0, cpuc->used_mask))
   return NDS32_IDX_COUNTER0;
  if (!test_and_set_bit(NDS32_IDX_COUNTER1, cpuc->used_mask))
   return NDS32_IDX_COUNTER1;
 } else if (evtype == SPAV3_1_SEL_COMPLETED_INSTRUCTION) {
  if (!test_and_set_bit(idx, cpuc->used_mask))
   return idx;
  else if (!test_and_set_bit(NDS32_IDX_COUNTER1, cpuc->used_mask))
   return NDS32_IDX_COUNTER1;
  else if (!test_and_set_bit
    (NDS32_IDX_CYCLE_COUNTER, cpuc->used_mask))
   return NDS32_IDX_CYCLE_COUNTER;
 } else {
  if (!test_and_set_bit(idx, cpuc->used_mask))
   return idx;
 }
 return -EAGAIN;
}
