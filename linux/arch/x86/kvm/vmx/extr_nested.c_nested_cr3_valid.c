
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 unsigned long long cpuid_maxphyaddr (struct kvm_vcpu*) ;

__attribute__((used)) static bool nested_cr3_valid(struct kvm_vcpu *vcpu, unsigned long val)
{
 unsigned long invalid_mask;

 invalid_mask = (~0ULL) << cpuid_maxphyaddr(vcpu);
 return (val & invalid_mask) == 0;
}
