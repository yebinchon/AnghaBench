
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpu_hw_events {int ds; } ;


 unsigned long DEBUGCTLMSR_BTINT ;
 unsigned long DEBUGCTLMSR_BTS ;
 unsigned long DEBUGCTLMSR_BTS_OFF_OS ;
 unsigned long DEBUGCTLMSR_BTS_OFF_USR ;
 unsigned long DEBUGCTLMSR_TR ;
 int cpu_hw_events ;
 unsigned long get_debugctlmsr () ;
 struct cpu_hw_events* this_cpu_ptr (int *) ;
 int update_debugctlmsr (unsigned long) ;

void intel_pmu_disable_bts(void)
{
 struct cpu_hw_events *cpuc = this_cpu_ptr(&cpu_hw_events);
 unsigned long debugctlmsr;

 if (!cpuc->ds)
  return;

 debugctlmsr = get_debugctlmsr();

 debugctlmsr &=
  ~(DEBUGCTLMSR_TR | DEBUGCTLMSR_BTS | DEBUGCTLMSR_BTINT |
    DEBUGCTLMSR_BTS_OFF_OS | DEBUGCTLMSR_BTS_OFF_USR);

 update_debugctlmsr(debugctlmsr);
}
