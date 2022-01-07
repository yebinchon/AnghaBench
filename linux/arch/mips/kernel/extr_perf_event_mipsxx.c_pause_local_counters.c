
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpu_hw_events {int* saved_ctrl; } ;
struct TYPE_2__ {int num_counters; } ;


 int M_PERFCTL_COUNT_EVENT_WHENEVER ;
 int cpu_hw_events ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 TYPE_1__ mipspmu ;
 int mipsxx_pmu_read_control (int) ;
 int mipsxx_pmu_write_control (int,int) ;
 struct cpu_hw_events* this_cpu_ptr (int *) ;

__attribute__((used)) static void pause_local_counters(void)
{
 struct cpu_hw_events *cpuc = this_cpu_ptr(&cpu_hw_events);
 int ctr = mipspmu.num_counters;
 unsigned long flags;

 local_irq_save(flags);
 do {
  ctr--;
  cpuc->saved_ctrl[ctr] = mipsxx_pmu_read_control(ctr);
  mipsxx_pmu_write_control(ctr, cpuc->saved_ctrl[ctr] &
      ~M_PERFCTL_COUNT_EVENT_WHENEVER);
 } while (ctr > 0);
 local_irq_restore(flags);
}
