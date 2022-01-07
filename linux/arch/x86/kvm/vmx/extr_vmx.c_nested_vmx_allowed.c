
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int X86_FEATURE_VMX ;
 scalar_t__ guest_cpuid_has (struct kvm_vcpu*,int ) ;
 scalar_t__ nested ;

bool nested_vmx_allowed(struct kvm_vcpu *vcpu)
{
 return nested && guest_cpuid_has(vcpu, X86_FEATURE_VMX);
}
