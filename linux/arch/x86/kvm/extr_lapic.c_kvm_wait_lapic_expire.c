
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int __kvm_wait_lapic_expire (struct kvm_vcpu*) ;
 scalar_t__ lapic_timer_int_injected (struct kvm_vcpu*) ;

void kvm_wait_lapic_expire(struct kvm_vcpu *vcpu)
{
 if (lapic_timer_int_injected(vcpu))
  __kvm_wait_lapic_expire(vcpu);
}
