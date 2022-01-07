
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pi_desc {int dummy; } ;
struct kvm_vcpu {scalar_t__ preempted; int kvm; } ;


 int IRQ_POSTING_CAP ;
 int irq_remapping_cap (int ) ;
 int kvm_arch_has_assigned_device (int ) ;
 int kvm_vcpu_apicv_active (struct kvm_vcpu*) ;
 int pi_set_sn (struct pi_desc*) ;
 struct pi_desc* vcpu_to_pi_desc (struct kvm_vcpu*) ;

__attribute__((used)) static void vmx_vcpu_pi_put(struct kvm_vcpu *vcpu)
{
 struct pi_desc *pi_desc = vcpu_to_pi_desc(vcpu);

 if (!kvm_arch_has_assigned_device(vcpu->kvm) ||
  !irq_remapping_cap(IRQ_POSTING_CAP) ||
  !kvm_vcpu_apicv_active(vcpu))
  return;


 if (vcpu->preempted)
  pi_set_sn(pi_desc);
}
