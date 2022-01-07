
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmu_hw_events {int pmu_lock; } ;
struct arm_pmu {int hw_events; } ;


 int ARMV8_PMU_PMCR_E ;
 int armv8pmu_pmcr_read () ;
 int armv8pmu_pmcr_write (int) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 struct pmu_hw_events* this_cpu_ptr (int ) ;

__attribute__((used)) static void armv8pmu_start(struct arm_pmu *cpu_pmu)
{
 unsigned long flags;
 struct pmu_hw_events *events = this_cpu_ptr(cpu_pmu->hw_events);

 raw_spin_lock_irqsave(&events->pmu_lock, flags);

 armv8pmu_pmcr_write(armv8pmu_pmcr_read() | ARMV8_PMU_PMCR_E);
 raw_spin_unlock_irqrestore(&events->pmu_lock, flags);
}
