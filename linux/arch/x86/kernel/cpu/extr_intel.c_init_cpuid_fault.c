
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct cpuinfo_x86 {int dummy; } ;


 int MSR_PLATFORM_INFO ;
 int MSR_PLATFORM_INFO_CPUID_FAULT ;
 int X86_FEATURE_CPUID_FAULT ;
 int rdmsrl_safe (int ,int*) ;
 int set_cpu_cap (struct cpuinfo_x86*,int ) ;

__attribute__((used)) static void init_cpuid_fault(struct cpuinfo_x86 *c)
{
 u64 msr;

 if (!rdmsrl_safe(MSR_PLATFORM_INFO, &msr)) {
  if (msr & MSR_PLATFORM_INFO_CPUID_FAULT)
   set_cpu_cap(c, X86_FEATURE_CPUID_FAULT);
 }
}
