
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int MSR_MISC_FEATURES_ENABLES ;
 int MSR_MISC_FEATURES_ENABLES_CPUID_FAULT ;
 int MSR_MISC_FEATURES_ENABLES_CPUID_FAULT_BIT ;
 int msr_misc_features_shadow ;
 int this_cpu_read (int ) ;
 int this_cpu_write (int ,int) ;
 int wrmsrl (int ,int) ;

__attribute__((used)) static void set_cpuid_faulting(bool on)
{
 u64 msrval;

 msrval = this_cpu_read(msr_misc_features_shadow);
 msrval &= ~MSR_MISC_FEATURES_ENABLES_CPUID_FAULT;
 msrval |= (on << MSR_MISC_FEATURES_ENABLES_CPUID_FAULT_BIT);
 this_cpu_write(msr_misc_features_shadow, msrval);
 wrmsrl(MSR_MISC_FEATURES_ENABLES, msrval);
}
