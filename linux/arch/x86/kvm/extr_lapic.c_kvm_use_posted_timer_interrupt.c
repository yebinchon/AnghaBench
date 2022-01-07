
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {scalar_t__ mode; } ;


 scalar_t__ IN_GUEST_MODE ;
 scalar_t__ kvm_can_post_timer_interrupt (struct kvm_vcpu*) ;

__attribute__((used)) static bool kvm_use_posted_timer_interrupt(struct kvm_vcpu *vcpu)
{
 return kvm_can_post_timer_interrupt(vcpu) && vcpu->mode == IN_GUEST_MODE;
}
