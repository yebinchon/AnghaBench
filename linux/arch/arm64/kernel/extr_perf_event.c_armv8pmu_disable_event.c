
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmu_hw_events {int pmu_lock; } ;
struct perf_event {int pmu; } ;
struct arm_pmu {int hw_events; } ;


 int armv8pmu_disable_event_counter (struct perf_event*) ;
 int armv8pmu_disable_event_irq (struct perf_event*) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 struct pmu_hw_events* this_cpu_ptr (int ) ;
 struct arm_pmu* to_arm_pmu (int ) ;

__attribute__((used)) static void armv8pmu_disable_event(struct perf_event *event)
{
 unsigned long flags;
 struct arm_pmu *cpu_pmu = to_arm_pmu(event->pmu);
 struct pmu_hw_events *events = this_cpu_ptr(cpu_pmu->hw_events);




 raw_spin_lock_irqsave(&events->pmu_lock, flags);




 armv8pmu_disable_event_counter(event);




 armv8pmu_disable_event_irq(event);

 raw_spin_unlock_irqrestore(&events->pmu_lock, flags);
}
