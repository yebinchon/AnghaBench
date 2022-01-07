
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct cpuinfo_x86 {int dummy; } ;


 int MSR_MISC_FEATURES_ENABLES ;
 int init_cpuid_fault (struct cpuinfo_x86*) ;
 int msr_misc_features_shadow ;
 int probe_xeon_phi_r3mwait (struct cpuinfo_x86*) ;
 scalar_t__ rdmsrl_safe (int ,int *) ;
 int this_cpu_read (int ) ;
 int this_cpu_write (int ,int ) ;
 int wrmsrl (int ,int ) ;

__attribute__((used)) static void init_intel_misc_features(struct cpuinfo_x86 *c)
{
 u64 msr;

 if (rdmsrl_safe(MSR_MISC_FEATURES_ENABLES, &msr))
  return;


 this_cpu_write(msr_misc_features_shadow, 0);


 init_cpuid_fault(c);
 probe_xeon_phi_r3mwait(c);

 msr = this_cpu_read(msr_misc_features_shadow);
 wrmsrl(MSR_MISC_FEATURES_ENABLES, msr);
}
