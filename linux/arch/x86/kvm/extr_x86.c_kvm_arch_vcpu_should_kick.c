
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 scalar_t__ IN_GUEST_MODE ;
 scalar_t__ kvm_vcpu_exiting_guest_mode (struct kvm_vcpu*) ;

int kvm_arch_vcpu_should_kick(struct kvm_vcpu *vcpu)
{
 return kvm_vcpu_exiting_guest_mode(vcpu) == IN_GUEST_MODE;
}
