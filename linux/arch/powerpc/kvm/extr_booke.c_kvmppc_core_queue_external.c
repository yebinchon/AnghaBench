
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
struct kvm_interrupt {scalar_t__ irq; } ;


 unsigned int BOOKE_IRQPRIO_EXTERNAL ;
 unsigned int BOOKE_IRQPRIO_EXTERNAL_LEVEL ;
 scalar_t__ KVM_INTERRUPT_SET_LEVEL ;
 int kvmppc_booke_queue_irqprio (struct kvm_vcpu*,unsigned int) ;

void kvmppc_core_queue_external(struct kvm_vcpu *vcpu,
                                struct kvm_interrupt *irq)
{
 unsigned int prio = BOOKE_IRQPRIO_EXTERNAL;

 if (irq->irq == KVM_INTERRUPT_SET_LEVEL)
  prio = BOOKE_IRQPRIO_EXTERNAL_LEVEL;

 kvmppc_booke_queue_irqprio(vcpu, prio);
}
