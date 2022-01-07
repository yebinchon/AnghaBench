
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int halted; } ;
struct TYPE_5__ {int pv_unhalted; } ;
struct TYPE_7__ {int mp_state; TYPE_2__ apf; TYPE_1__ pv; } ;
struct kvm_vcpu {TYPE_3__ arch; int srcu_idx; } ;
struct kvm {int srcu; } ;
struct TYPE_8__ {scalar_t__ (* pre_block ) (struct kvm_vcpu*) ;int (* post_block ) (struct kvm_vcpu*) ;} ;


 int EINTR ;



 int KVM_REQ_UNHALT ;
 int kvm_apic_accept_events (struct kvm_vcpu*) ;
 int kvm_arch_vcpu_runnable (struct kvm_vcpu*) ;
 int kvm_check_request (int ,struct kvm_vcpu*) ;
 int kvm_vcpu_block (struct kvm_vcpu*) ;
 TYPE_4__* kvm_x86_ops ;
 int srcu_read_lock (int *) ;
 int srcu_read_unlock (int *,int ) ;
 scalar_t__ stub1 (struct kvm_vcpu*) ;
 int stub2 (struct kvm_vcpu*) ;

__attribute__((used)) static inline int vcpu_block(struct kvm *kvm, struct kvm_vcpu *vcpu)
{
 if (!kvm_arch_vcpu_runnable(vcpu) &&
     (!kvm_x86_ops->pre_block || kvm_x86_ops->pre_block(vcpu) == 0)) {
  srcu_read_unlock(&kvm->srcu, vcpu->srcu_idx);
  kvm_vcpu_block(vcpu);
  vcpu->srcu_idx = srcu_read_lock(&kvm->srcu);

  if (kvm_x86_ops->post_block)
   kvm_x86_ops->post_block(vcpu);

  if (!kvm_check_request(KVM_REQ_UNHALT, vcpu))
   return 1;
 }

 kvm_apic_accept_events(vcpu);
 switch(vcpu->arch.mp_state) {
 case 130:
  vcpu->arch.pv.pv_unhalted = 0;
  vcpu->arch.mp_state =
   128;

 case 128:
  vcpu->arch.apf.halted = 0;
  break;
 case 129:
  break;
 default:
  return -EINTR;
  break;
 }
 return 1;
}
