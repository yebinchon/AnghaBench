
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmu_hw_events {int pmu_lock; } ;
struct hw_perf_event {int idx; } ;
struct perf_event {int pmu; struct hw_perf_event hw; } ;
struct nds32_pmu {struct pmu_hw_events* (* get_hw_events ) () ;} ;


 int nds32_pfm_counter_valid (struct nds32_pmu*,int) ;
 int nds32_pfm_disable_counter (int) ;
 int nds32_pfm_disable_intens (int) ;
 int pr_err (char*,int) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 struct pmu_hw_events* stub1 () ;
 struct nds32_pmu* to_nds32_pmu (int ) ;

__attribute__((used)) static void nds32_pmu_disable_event(struct perf_event *event)
{
 unsigned long flags;
 struct hw_perf_event *hwc = &event->hw;
 struct nds32_pmu *cpu_pmu = to_nds32_pmu(event->pmu);
 struct pmu_hw_events *events = cpu_pmu->get_hw_events();
 int idx = hwc->idx;

 if (!nds32_pfm_counter_valid(cpu_pmu, idx)) {
  pr_err("CPU disabling wrong pfm counter IRQ enable %d\n", idx);
  return;
 }




 raw_spin_lock_irqsave(&events->pmu_lock, flags);




 nds32_pfm_disable_counter(idx);




 nds32_pfm_disable_intens(idx);

 raw_spin_unlock_irqrestore(&events->pmu_lock, flags);
}
