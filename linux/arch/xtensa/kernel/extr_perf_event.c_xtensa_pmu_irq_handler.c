
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u64 ;
struct xtensa_pmu_events {struct perf_event** event; int used_mask; } ;
struct pt_regs {int dummy; } ;
struct perf_sample_data {int dummy; } ;
struct hw_perf_event {int last_period; } ;
struct perf_event {struct hw_perf_event hw; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 unsigned int XCHAL_NUM_PERF_COUNTERS ;
 int XTENSA_PMU_PMSTAT (unsigned int) ;
 int XTENSA_PMU_PMSTAT_OVFL ;
 unsigned int find_first_bit (int ,unsigned int) ;
 unsigned int find_next_bit (int ,unsigned int,unsigned int) ;
 int get_er (int ) ;
 struct pt_regs* get_irq_regs () ;
 scalar_t__ perf_event_overflow (struct perf_event*,struct perf_sample_data*,struct pt_regs*) ;
 int perf_sample_data_init (struct perf_sample_data*,int ,int ) ;
 int set_er (int,int ) ;
 struct xtensa_pmu_events* this_cpu_ptr (int *) ;
 scalar_t__ xtensa_perf_event_set_period (struct perf_event*,struct hw_perf_event*,unsigned int) ;
 int xtensa_perf_event_update (struct perf_event*,struct hw_perf_event*,unsigned int) ;
 int xtensa_pmu_events ;
 int xtensa_pmu_stop (struct perf_event*,int ) ;

irqreturn_t xtensa_pmu_irq_handler(int irq, void *dev_id)
{
 irqreturn_t rc = IRQ_NONE;
 struct xtensa_pmu_events *ev = this_cpu_ptr(&xtensa_pmu_events);
 unsigned i;

 for (i = find_first_bit(ev->used_mask, XCHAL_NUM_PERF_COUNTERS);
      i < XCHAL_NUM_PERF_COUNTERS;
      i = find_next_bit(ev->used_mask, XCHAL_NUM_PERF_COUNTERS, i + 1)) {
  uint32_t v = get_er(XTENSA_PMU_PMSTAT(i));
  struct perf_event *event = ev->event[i];
  struct hw_perf_event *hwc = &event->hw;
  u64 last_period;

  if (!(v & XTENSA_PMU_PMSTAT_OVFL))
   continue;

  set_er(v, XTENSA_PMU_PMSTAT(i));
  xtensa_perf_event_update(event, hwc, i);
  last_period = hwc->last_period;
  if (xtensa_perf_event_set_period(event, hwc, i)) {
   struct perf_sample_data data;
   struct pt_regs *regs = get_irq_regs();

   perf_sample_data_init(&data, 0, last_period);
   if (perf_event_overflow(event, &data, regs))
    xtensa_pmu_stop(event, 0);
  }

  rc = IRQ_HANDLED;
 }
 return rc;
}
