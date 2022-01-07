
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
struct pmu_hw_events {struct perf_event** events; } ;
struct perf_sample_data {int dummy; } ;
struct hw_perf_event {int last_period; } ;
struct perf_event {struct hw_perf_event hw; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int pmu; int hw_events; } ;


 int BIT (int) ;
 int CSKY_PMU_MAX_EVENTS ;
 int HPOFSR ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int cprcr (int ) ;
 int csky_perf_event_update (struct perf_event*,struct hw_perf_event*) ;
 TYPE_1__ csky_pmu ;
 int csky_pmu_disable (int *) ;
 int csky_pmu_enable (int *) ;
 int csky_pmu_event_set_period (struct perf_event*) ;
 int csky_pmu_stop_event (struct perf_event*) ;
 struct pt_regs* get_irq_regs () ;
 int irq_work_run () ;
 scalar_t__ perf_event_overflow (struct perf_event*,struct perf_sample_data*,struct pt_regs*) ;
 int perf_sample_data_init (struct perf_sample_data*,int ,int ) ;
 struct pmu_hw_events* this_cpu_ptr (int ) ;

__attribute__((used)) static irqreturn_t csky_pmu_handle_irq(int irq_num, void *dev)
{
 struct perf_sample_data data;
 struct pmu_hw_events *cpuc = this_cpu_ptr(csky_pmu.hw_events);
 struct pt_regs *regs;
 int idx;




 if (!cprcr(HPOFSR))
  return IRQ_NONE;




 regs = get_irq_regs();

 csky_pmu_disable(&csky_pmu.pmu);

 for (idx = 0; idx < CSKY_PMU_MAX_EVENTS; ++idx) {
  struct perf_event *event = cpuc->events[idx];
  struct hw_perf_event *hwc;


  if (!event)
   continue;




  if (!(cprcr(HPOFSR) & BIT(idx)))
   continue;

  hwc = &event->hw;
  csky_perf_event_update(event, &event->hw);
  perf_sample_data_init(&data, 0, hwc->last_period);
  csky_pmu_event_set_period(event);

  if (perf_event_overflow(event, &data, regs))
   csky_pmu_stop_event(event);
 }

 csky_pmu_enable(&csky_pmu.pmu);
 irq_work_run();

 return IRQ_HANDLED;
}
