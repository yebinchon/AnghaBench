
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int inject_undef64 (struct kvm_vcpu*) ;
 int kvm_inject_undef32 (struct kvm_vcpu*) ;
 scalar_t__ vcpu_el1_is_32bit (struct kvm_vcpu*) ;

void kvm_inject_undefined(struct kvm_vcpu *vcpu)
{
 if (vcpu_el1_is_32bit(vcpu))
  kvm_inject_undef32(vcpu);
 else
  inject_undef64(vcpu);
}
