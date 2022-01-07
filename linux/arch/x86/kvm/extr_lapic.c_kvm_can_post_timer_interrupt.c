
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 scalar_t__ kvm_vcpu_apicv_active (struct kvm_vcpu*) ;
 scalar_t__ pi_inject_timer ;

bool kvm_can_post_timer_interrupt(struct kvm_vcpu *vcpu)
{
 return pi_inject_timer && kvm_vcpu_apicv_active(vcpu);
}
