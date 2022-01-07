
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long ARCH_PERFMON_EVENTSEL_ENABLE ;
 int MSR_P6_EVNTSEL0 ;
 int rdmsrl (int ,unsigned long) ;
 int wrmsrl (int ,unsigned long) ;

__attribute__((used)) static void p6_pmu_enable_all(int added)
{
 unsigned long val;


 rdmsrl(MSR_P6_EVNTSEL0, val);
 val |= ARCH_PERFMON_EVENTSEL_ENABLE;
 wrmsrl(MSR_P6_EVNTSEL0, val);
}
