
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KVM_CPUID_FEATURES ;
 unsigned int cpuid_eax (int) ;
 int kvm_cpuid_base () ;

unsigned int kvm_arch_para_features(void)
{
 return cpuid_eax(kvm_cpuid_base() | KVM_CPUID_FEATURES);
}
