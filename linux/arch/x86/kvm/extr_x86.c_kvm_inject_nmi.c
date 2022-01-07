
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nmi_queued; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int KVM_REQ_NMI ;
 int atomic_inc (int *) ;
 int kvm_make_request (int ,struct kvm_vcpu*) ;

void kvm_inject_nmi(struct kvm_vcpu *vcpu)
{
 atomic_inc(&vcpu->arch.nmi_queued);
 kvm_make_request(KVM_REQ_NMI, vcpu);
}
