
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int external_oneshot; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct kvm_interrupt {scalar_t__ irq; } ;


 int BOOK3S_INTERRUPT_EXTERNAL ;
 scalar_t__ KVM_INTERRUPT_SET ;
 int kvmppc_book3s_queue_irqprio (struct kvm_vcpu*,int ) ;

void kvmppc_core_queue_external(struct kvm_vcpu *vcpu,
                                struct kvm_interrupt *irq)
{
 if (irq->irq == KVM_INTERRUPT_SET)
  vcpu->arch.external_oneshot = 1;

 kvmppc_book3s_queue_irqprio(vcpu, BOOK3S_INTERRUPT_EXTERNAL);
}
