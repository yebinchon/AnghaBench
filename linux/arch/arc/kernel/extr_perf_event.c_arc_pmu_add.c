
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hw_perf_event {int idx; int state; int prev_count; } ;
struct perf_event {struct hw_perf_event hw; } ;
struct arc_pmu_cpu {struct perf_event** act_counter; int * used_mask; } ;
struct TYPE_2__ {int n_counters; int max_period; } ;


 int ARC_REG_PCT_CONFIG ;
 int ARC_REG_PCT_COUNTH ;
 int ARC_REG_PCT_COUNTL ;
 int ARC_REG_PCT_INDEX ;
 int ARC_REG_PCT_INT_CNTH ;
 int ARC_REG_PCT_INT_CNTL ;
 int EAGAIN ;
 int PERF_EF_RELOAD ;
 int PERF_EF_START ;
 int PERF_HES_STOPPED ;
 int PERF_HES_UPTODATE ;
 int __set_bit (int,int *) ;
 TYPE_1__* arc_pmu ;
 int arc_pmu_cpu ;
 int arc_pmu_start (struct perf_event*,int ) ;
 int ffz (int ) ;
 scalar_t__ is_sampling_event (struct perf_event*) ;
 int local64_set (int *,int ) ;
 int lower_32_bits (int ) ;
 int perf_event_update_userpage (struct perf_event*) ;
 struct arc_pmu_cpu* this_cpu_ptr (int *) ;
 int upper_32_bits (int ) ;
 int write_aux_reg (int ,int) ;

__attribute__((used)) static int arc_pmu_add(struct perf_event *event, int flags)
{
 struct arc_pmu_cpu *pmu_cpu = this_cpu_ptr(&arc_pmu_cpu);
 struct hw_perf_event *hwc = &event->hw;
 int idx = hwc->idx;

 idx = ffz(pmu_cpu->used_mask[0]);
 if (idx == arc_pmu->n_counters)
  return -EAGAIN;

 __set_bit(idx, pmu_cpu->used_mask);
 hwc->idx = idx;

 write_aux_reg(ARC_REG_PCT_INDEX, idx);

 pmu_cpu->act_counter[idx] = event;

 if (is_sampling_event(event)) {

  write_aux_reg(ARC_REG_PCT_INT_CNTL,
         lower_32_bits(arc_pmu->max_period));
  write_aux_reg(ARC_REG_PCT_INT_CNTH,
         upper_32_bits(arc_pmu->max_period));
 }

 write_aux_reg(ARC_REG_PCT_CONFIG, 0);
 write_aux_reg(ARC_REG_PCT_COUNTL, 0);
 write_aux_reg(ARC_REG_PCT_COUNTH, 0);
 local64_set(&hwc->prev_count, 0);

 hwc->state = PERF_HES_UPTODATE | PERF_HES_STOPPED;
 if (flags & PERF_EF_START)
  arc_pmu_start(event, PERF_EF_RELOAD);

 perf_event_update_userpage(event);

 return 0;
}
