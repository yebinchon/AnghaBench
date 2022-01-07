
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
struct kvm_interrupt {scalar_t__ irq; } ;


 scalar_t__ KVM_INTERRUPT_UNSET ;
 int kvm_vcpu_kick (struct kvm_vcpu*) ;
 int kvmppc_core_dequeue_external (struct kvm_vcpu*) ;
 int kvmppc_core_queue_external (struct kvm_vcpu*,struct kvm_interrupt*) ;

int kvm_vcpu_ioctl_interrupt(struct kvm_vcpu *vcpu, struct kvm_interrupt *irq)
{
 if (irq->irq == KVM_INTERRUPT_UNSET) {
  kvmppc_core_dequeue_external(vcpu);
  return 0;
 }

 kvmppc_core_queue_external(vcpu, irq);

 kvm_vcpu_kick(vcpu);

 return 0;
}
