
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEBUGCTLMSR_FREEZE_PERFMON_ON_PMI ;
 int get_debugctlmsr () ;
 int update_debugctlmsr (int) ;

__attribute__((used)) static void disable_counter_freeze(void)
{
 update_debugctlmsr(get_debugctlmsr() &
   ~DEBUGCTLMSR_FREEZE_PERFMON_ON_PMI);
}
