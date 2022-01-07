
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpu_hw_events {int* saved_ctrl; } ;
struct TYPE_2__ {int num_counters; } ;


 int M_PERFCTL_COUNT_EVENT_WHENEVER ;
 int WARN_ON (int) ;
 int cpu_hw_events ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 TYPE_1__ mipspmu ;
 int mipsxx_pmu_read_control (int) ;
 int mipsxx_pmu_write_control (int,int) ;
 struct cpu_hw_events* this_cpu_ptr (int *) ;

__attribute__((used)) static void mipsxx_pmu_disable_event(int idx)
{
 struct cpu_hw_events *cpuc = this_cpu_ptr(&cpu_hw_events);
 unsigned long flags;

 WARN_ON(idx < 0 || idx >= mipspmu.num_counters);

 local_irq_save(flags);
 cpuc->saved_ctrl[idx] = mipsxx_pmu_read_control(idx) &
  ~M_PERFCTL_COUNT_EVENT_WHENEVER;
 mipsxx_pmu_write_control(idx, cpuc->saved_ctrl[idx]);
 local_irq_restore(flags);
}
