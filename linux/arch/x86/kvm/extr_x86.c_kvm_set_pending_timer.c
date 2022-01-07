
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int KVM_REQ_PENDING_TIMER ;
 int kvm_make_request (int ,struct kvm_vcpu*) ;
 int kvm_vcpu_kick (struct kvm_vcpu*) ;

void kvm_set_pending_timer(struct kvm_vcpu *vcpu)
{
 kvm_make_request(KVM_REQ_PENDING_TIMER, vcpu);
 kvm_vcpu_kick(vcpu);
}
