
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long long u64 ;
struct pt_regs {int dummy; } ;
struct perf_sample_data {int dummy; } ;
struct hw_perf_event {int idx; int last_period; } ;
struct perf_event {struct hw_perf_event hw; } ;
struct cpu_hw_events {struct perf_event** events; int running; int active_mask; } ;
struct TYPE_2__ {int num_counters; int cntval_bits; } ;


 int APIC_DM_NMI ;
 int APIC_LVTPC ;
 int WARN_ON_ONCE (int) ;
 scalar_t__ __test_and_clear_bit (int,int ) ;
 int apic_perf_irqs ;
 int apic_write (int ,int ) ;
 int cpu_hw_events ;
 int inc_irq_stat (int ) ;
 int p4_pmu_clear_cccr_ovf (struct hw_perf_event*) ;
 scalar_t__ perf_event_overflow (struct perf_event*,struct perf_sample_data*,struct pt_regs*) ;
 int perf_sample_data_init (struct perf_sample_data*,int ,int ) ;
 int test_bit (int,int ) ;
 struct cpu_hw_events* this_cpu_ptr (int *) ;
 int x86_perf_event_set_period (struct perf_event*) ;
 unsigned long long x86_perf_event_update (struct perf_event*) ;
 TYPE_1__ x86_pmu ;
 int x86_pmu_stop (struct perf_event*,int ) ;

__attribute__((used)) static int p4_pmu_handle_irq(struct pt_regs *regs)
{
 struct perf_sample_data data;
 struct cpu_hw_events *cpuc;
 struct perf_event *event;
 struct hw_perf_event *hwc;
 int idx, handled = 0;
 u64 val;

 cpuc = this_cpu_ptr(&cpu_hw_events);

 for (idx = 0; idx < x86_pmu.num_counters; idx++) {
  int overflow;

  if (!test_bit(idx, cpuc->active_mask)) {

   if (__test_and_clear_bit(idx, cpuc->running))
    handled++;
   continue;
  }

  event = cpuc->events[idx];
  hwc = &event->hw;

  WARN_ON_ONCE(hwc->idx != idx);


  overflow = p4_pmu_clear_cccr_ovf(hwc);

  val = x86_perf_event_update(event);
  if (!overflow && (val & (1ULL << (x86_pmu.cntval_bits - 1))))
   continue;

  handled += overflow;


  perf_sample_data_init(&data, 0, hwc->last_period);

  if (!x86_perf_event_set_period(event))
   continue;


  if (perf_event_overflow(event, &data, regs))
   x86_pmu_stop(event, 0);
 }

 if (handled)
  inc_irq_stat(apic_perf_irqs);
 apic_write(APIC_LVTPC, APIC_DM_NMI);

 return handled;
}
