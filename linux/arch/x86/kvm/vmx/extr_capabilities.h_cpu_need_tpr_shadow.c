
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 scalar_t__ cpu_has_vmx_tpr_shadow () ;
 scalar_t__ lapic_in_kernel (struct kvm_vcpu*) ;

__attribute__((used)) static inline bool cpu_need_tpr_shadow(struct kvm_vcpu *vcpu)
{
 return cpu_has_vmx_tpr_shadow() && lapic_in_kernel(vcpu);
}
