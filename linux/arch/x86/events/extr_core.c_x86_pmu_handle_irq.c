
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned long long u64 ;
struct pt_regs {int dummy; } ;
struct perf_sample_data {int dummy; } ;
struct TYPE_3__ {int last_period; } ;
struct perf_event {TYPE_1__ hw; } ;
struct cpu_hw_events {struct perf_event** events; int active_mask; } ;
struct TYPE_4__ {int num_counters; int cntval_bits; } ;


 int APIC_DM_NMI ;
 int APIC_LVTPC ;
 int apic_perf_irqs ;
 int apic_write (int ,int ) ;
 int cpu_hw_events ;
 int inc_irq_stat (int ) ;
 scalar_t__ perf_event_overflow (struct perf_event*,struct perf_sample_data*,struct pt_regs*) ;
 int perf_sample_data_init (struct perf_sample_data*,int ,int ) ;
 int test_bit (int,int ) ;
 struct cpu_hw_events* this_cpu_ptr (int *) ;
 int x86_perf_event_set_period (struct perf_event*) ;
 unsigned long long x86_perf_event_update (struct perf_event*) ;
 TYPE_2__ x86_pmu ;
 int x86_pmu_stop (struct perf_event*,int ) ;

int x86_pmu_handle_irq(struct pt_regs *regs)
{
 struct perf_sample_data data;
 struct cpu_hw_events *cpuc;
 struct perf_event *event;
 int idx, handled = 0;
 u64 val;

 cpuc = this_cpu_ptr(&cpu_hw_events);
 apic_write(APIC_LVTPC, APIC_DM_NMI);

 for (idx = 0; idx < x86_pmu.num_counters; idx++) {
  if (!test_bit(idx, cpuc->active_mask))
   continue;

  event = cpuc->events[idx];

  val = x86_perf_event_update(event);
  if (val & (1ULL << (x86_pmu.cntval_bits - 1)))
   continue;




  handled++;
  perf_sample_data_init(&data, 0, event->hw.last_period);

  if (!x86_perf_event_set_period(event))
   continue;

  if (perf_event_overflow(event, &data, regs))
   x86_pmu_stop(event, 0);
 }

 if (handled)
  inc_irq_stat(apic_perf_irqs);

 return handled;
}
