
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int X86_FEATURE_TSC_KNOWN_FREQ ;
 unsigned long pvclock_tsc_khz (int ) ;
 int setup_force_cpu_cap (int ) ;
 int this_cpu_pvti () ;

__attribute__((used)) static unsigned long kvm_get_tsc_khz(void)
{
 setup_force_cpu_cap(X86_FEATURE_TSC_KNOWN_FREQ);
 return pvclock_tsc_khz(this_cpu_pvti());
}
