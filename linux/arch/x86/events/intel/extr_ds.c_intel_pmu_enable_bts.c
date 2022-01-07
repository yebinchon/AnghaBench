
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int ARCH_PERFMON_EVENTSEL_INT ;
 int ARCH_PERFMON_EVENTSEL_OS ;
 int ARCH_PERFMON_EVENTSEL_USR ;
 unsigned long DEBUGCTLMSR_BTINT ;
 unsigned long DEBUGCTLMSR_BTS ;
 unsigned long DEBUGCTLMSR_BTS_OFF_OS ;
 unsigned long DEBUGCTLMSR_BTS_OFF_USR ;
 unsigned long DEBUGCTLMSR_TR ;
 unsigned long get_debugctlmsr () ;
 int update_debugctlmsr (unsigned long) ;

void intel_pmu_enable_bts(u64 config)
{
 unsigned long debugctlmsr;

 debugctlmsr = get_debugctlmsr();

 debugctlmsr |= DEBUGCTLMSR_TR;
 debugctlmsr |= DEBUGCTLMSR_BTS;
 if (config & ARCH_PERFMON_EVENTSEL_INT)
  debugctlmsr |= DEBUGCTLMSR_BTINT;

 if (!(config & ARCH_PERFMON_EVENTSEL_OS))
  debugctlmsr |= DEBUGCTLMSR_BTS_OFF_OS;

 if (!(config & ARCH_PERFMON_EVENTSEL_USR))
  debugctlmsr |= DEBUGCTLMSR_BTS_OFF_USR;

 update_debugctlmsr(debugctlmsr);
}
