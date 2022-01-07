
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pt_regs {int dummy; } ;
struct pmu_hw_events {struct perf_event** events; } ;
struct perf_sample_data {int dummy; } ;
struct hw_perf_event {int last_period; } ;
struct perf_event {struct hw_perf_event hw; } ;
struct arm_pmu {int num_events; int (* disable ) (struct perf_event*) ;int hw_events; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int armpmu_event_set_period (struct perf_event*) ;
 int armpmu_event_update (struct perf_event*) ;
 int armv8pmu_counter_has_overflowed (int ,int) ;
 int armv8pmu_getreset_flags () ;
 int armv8pmu_has_overflowed (int ) ;
 int armv8pmu_start (struct arm_pmu*) ;
 int armv8pmu_stop (struct arm_pmu*) ;
 struct pt_regs* get_irq_regs () ;
 int irq_work_run () ;
 scalar_t__ perf_event_overflow (struct perf_event*,struct perf_sample_data*,struct pt_regs*) ;
 int perf_sample_data_init (struct perf_sample_data*,int ,int ) ;
 int stub1 (struct perf_event*) ;
 struct pmu_hw_events* this_cpu_ptr (int ) ;

__attribute__((used)) static irqreturn_t armv8pmu_handle_irq(struct arm_pmu *cpu_pmu)
{
 u32 pmovsr;
 struct perf_sample_data data;
 struct pmu_hw_events *cpuc = this_cpu_ptr(cpu_pmu->hw_events);
 struct pt_regs *regs;
 int idx;




 pmovsr = armv8pmu_getreset_flags();




 if (!armv8pmu_has_overflowed(pmovsr))
  return IRQ_NONE;




 regs = get_irq_regs();





 armv8pmu_stop(cpu_pmu);
 for (idx = 0; idx < cpu_pmu->num_events; ++idx) {
  struct perf_event *event = cpuc->events[idx];
  struct hw_perf_event *hwc;


  if (!event)
   continue;





  if (!armv8pmu_counter_has_overflowed(pmovsr, idx))
   continue;

  hwc = &event->hw;
  armpmu_event_update(event);
  perf_sample_data_init(&data, 0, hwc->last_period);
  if (!armpmu_event_set_period(event))
   continue;

  if (perf_event_overflow(event, &data, regs))
   cpu_pmu->disable(event);
 }
 armv8pmu_start(cpu_pmu);
 irq_work_run();

 return IRQ_HANDLED;
}
