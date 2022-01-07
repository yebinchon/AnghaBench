
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 unsigned long copy_core_reg_indices (struct kvm_vcpu const*,int *) ;

__attribute__((used)) static unsigned long num_core_regs(const struct kvm_vcpu *vcpu)
{
 return copy_core_reg_indices(vcpu, ((void*)0));
}
