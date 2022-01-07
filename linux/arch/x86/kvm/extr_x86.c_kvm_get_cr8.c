
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long cr8; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 unsigned long kvm_lapic_get_cr8 (struct kvm_vcpu*) ;
 scalar_t__ lapic_in_kernel (struct kvm_vcpu*) ;

unsigned long kvm_get_cr8(struct kvm_vcpu *vcpu)
{
 if (lapic_in_kernel(vcpu))
  return kvm_lapic_get_cr8(vcpu);
 else
  return vcpu->arch.cr8;
}
