
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int KVM_REQ_EVENT ;
 int __kvm_set_rflags (struct kvm_vcpu*,unsigned long) ;
 int kvm_make_request (int ,struct kvm_vcpu*) ;

void kvm_set_rflags(struct kvm_vcpu *vcpu, unsigned long rflags)
{
 __kvm_set_rflags(vcpu, rflags);
 kvm_make_request(KVM_REQ_EVENT, vcpu);
}
