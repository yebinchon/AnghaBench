
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int smi_pending; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int KVM_REQ_EVENT ;
 int kvm_make_request (int ,struct kvm_vcpu*) ;

__attribute__((used)) static void process_smi(struct kvm_vcpu *vcpu)
{
 vcpu->arch.smi_pending = 1;
 kvm_make_request(KVM_REQ_EVENT, vcpu);
}
