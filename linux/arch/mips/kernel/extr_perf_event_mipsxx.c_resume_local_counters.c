
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpu_hw_events {int * saved_ctrl; } ;
struct TYPE_2__ {int num_counters; } ;


 int cpu_hw_events ;
 TYPE_1__ mipspmu ;
 int mipsxx_pmu_write_control (int,int ) ;
 struct cpu_hw_events* this_cpu_ptr (int *) ;

__attribute__((used)) static void resume_local_counters(void)
{
 struct cpu_hw_events *cpuc = this_cpu_ptr(&cpu_hw_events);
 int ctr = mipspmu.num_counters;

 do {
  ctr--;
  mipsxx_pmu_write_control(ctr, cpuc->saved_ctrl[ctr]);
 } while (ctr > 0);
}
