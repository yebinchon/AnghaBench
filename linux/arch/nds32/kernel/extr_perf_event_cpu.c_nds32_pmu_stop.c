
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmu_hw_events {int pmu_lock; } ;
struct nds32_pmu {struct pmu_hw_events* (* get_hw_events ) () ;} ;


 int NDS32_SR_PFM_CTL ;
 unsigned int* PFM_CTL_EN ;
 unsigned int* PFM_CTL_OVF ;
 unsigned int __nds32__mfsr (int ) ;
 int __nds32__mtsr_isb (unsigned int,int ) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 struct pmu_hw_events* stub1 () ;

__attribute__((used)) static void nds32_pmu_stop(struct nds32_pmu *cpu_pmu)
{
 unsigned long flags;
 unsigned int val;
 struct pmu_hw_events *events = cpu_pmu->get_hw_events();

 raw_spin_lock_irqsave(&events->pmu_lock, flags);


 val = __nds32__mfsr(NDS32_SR_PFM_CTL);
 val &= ~(PFM_CTL_EN[0] | PFM_CTL_EN[1] | PFM_CTL_EN[2]);
 val &= ~(PFM_CTL_OVF[0] | PFM_CTL_OVF[1] | PFM_CTL_OVF[2]);
 __nds32__mtsr_isb(val, NDS32_SR_PFM_CTL);

 raw_spin_unlock_irqrestore(&events->pmu_lock, flags);
}
