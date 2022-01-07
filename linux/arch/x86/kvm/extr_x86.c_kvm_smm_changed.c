
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hflags; int smbase; } ;
struct kvm_vcpu {TYPE_1__ arch; int vcpu_id; } ;


 int HF_SMM_MASK ;
 int KVM_REQ_EVENT ;
 int kvm_make_request (int ,struct kvm_vcpu*) ;
 int kvm_mmu_reset_context (struct kvm_vcpu*) ;
 int trace_kvm_enter_smm (int ,int ,int) ;

__attribute__((used)) static void kvm_smm_changed(struct kvm_vcpu *vcpu)
{
 if (!(vcpu->arch.hflags & HF_SMM_MASK)) {

  trace_kvm_enter_smm(vcpu->vcpu_id, vcpu->arch.smbase, 0);


  kvm_make_request(KVM_REQ_EVENT, vcpu);
 }

 kvm_mmu_reset_context(vcpu);
}
