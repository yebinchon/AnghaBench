
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmu_hw_events {int pmu_lock; } ;
struct hw_perf_event {int idx; unsigned int config_base; } ;
struct perf_event {int attr; int pmu; struct hw_perf_event hw; } ;
struct nds32_pmu {scalar_t__ (* set_event_filter ) (struct hw_perf_event*,int *) ;struct pmu_hw_events* (* get_hw_events ) () ;} ;


 scalar_t__ event_requires_mode_exclusion (int *) ;
 int nds32_pfm_counter_valid (struct nds32_pmu*,int) ;
 int nds32_pfm_disable_counter (int) ;
 int nds32_pfm_enable_counter (int) ;
 int nds32_pfm_enable_intens (int) ;
 int nds32_pfm_write_evtsel (int,unsigned int) ;
 int pr_err (char*) ;
 int pr_notice (char*) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 struct pmu_hw_events* stub1 () ;
 scalar_t__ stub2 (struct hw_perf_event*,int *) ;
 struct nds32_pmu* to_nds32_pmu (int ) ;

__attribute__((used)) static void nds32_pmu_enable_event(struct perf_event *event)
{
 unsigned long flags;
 unsigned int evnum = 0;
 struct hw_perf_event *hwc = &event->hw;
 struct nds32_pmu *cpu_pmu = to_nds32_pmu(event->pmu);
 struct pmu_hw_events *events = cpu_pmu->get_hw_events();
 int idx = hwc->idx;

 if (!nds32_pfm_counter_valid(cpu_pmu, idx)) {
  pr_err("CPU enabling wrong pfm counter IRQ enable\n");
  return;
 }





 raw_spin_lock_irqsave(&events->pmu_lock, flags);




 nds32_pfm_disable_counter(idx);




 if ((!cpu_pmu->set_event_filter ||
      cpu_pmu->set_event_filter(hwc, &event->attr)) &&
      event_requires_mode_exclusion(&event->attr)) {
  pr_notice
  ("NDS32 performance counters do not support mode exclusion\n");
  hwc->config_base = 0;
 }

 evnum = hwc->config_base;
 nds32_pfm_write_evtsel(idx, evnum);




 nds32_pfm_enable_intens(idx);




 nds32_pfm_enable_counter(idx);

 raw_spin_unlock_irqrestore(&events->pmu_lock, flags);
}
