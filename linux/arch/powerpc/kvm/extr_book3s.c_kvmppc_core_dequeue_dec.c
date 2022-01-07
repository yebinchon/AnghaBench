
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int BOOK3S_INTERRUPT_DECREMENTER ;
 int kvmppc_book3s_dequeue_irqprio (struct kvm_vcpu*,int ) ;

void kvmppc_core_dequeue_dec(struct kvm_vcpu *vcpu)
{
 kvmppc_book3s_dequeue_irqprio(vcpu, BOOK3S_INTERRUPT_DECREMENTER);
}
