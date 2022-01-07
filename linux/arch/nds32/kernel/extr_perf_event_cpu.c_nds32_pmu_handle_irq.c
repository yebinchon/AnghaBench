
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
struct nds32_pmu {int num_events; int (* disable ) (struct perf_event*) ;struct pmu_hw_events* (* get_hw_events ) () ;} ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 struct pt_regs* get_irq_regs () ;
 int irq_work_run () ;
 int nds32_pfm_counter_has_overflowed (int ,int) ;
 int nds32_pfm_getreset_flags () ;
 int nds32_pfm_has_overflowed (int ) ;
 int nds32_pmu_event_set_period (struct perf_event*) ;
 int nds32_pmu_event_update (struct perf_event*) ;
 int nds32_pmu_start (struct nds32_pmu*) ;
 int nds32_pmu_stop (struct nds32_pmu*) ;
 scalar_t__ perf_event_overflow (struct perf_event*,struct perf_sample_data*,struct pt_regs*) ;
 int perf_sample_data_init (struct perf_sample_data*,int ,int ) ;
 struct pmu_hw_events* stub1 () ;
 int stub2 (struct perf_event*) ;

__attribute__((used)) static irqreturn_t nds32_pmu_handle_irq(int irq_num, void *dev)
{
 u32 pfm;
 struct perf_sample_data data;
 struct nds32_pmu *cpu_pmu = (struct nds32_pmu *)dev;
 struct pmu_hw_events *cpuc = cpu_pmu->get_hw_events();
 struct pt_regs *regs;
 int idx;



 pfm = nds32_pfm_getreset_flags();




 if (!nds32_pfm_has_overflowed(pfm))
  return IRQ_NONE;




 regs = get_irq_regs();

 nds32_pmu_stop(cpu_pmu);
 for (idx = 0; idx < cpu_pmu->num_events; ++idx) {
  struct perf_event *event = cpuc->events[idx];
  struct hw_perf_event *hwc;


  if (!event)
   continue;





  if (!nds32_pfm_counter_has_overflowed(pfm, idx))
   continue;

  hwc = &event->hw;
  nds32_pmu_event_update(event);
  perf_sample_data_init(&data, 0, hwc->last_period);
  if (!nds32_pmu_event_set_period(event))
   continue;

  if (perf_event_overflow(event, &data, regs))
   cpu_pmu->disable(event);
 }
 nds32_pmu_start(cpu_pmu);







 irq_work_run();

 return IRQ_HANDLED;
}
