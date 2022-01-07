
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long pending_exceptions; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int clear_bit (int ,unsigned long*) ;
 int kvmppc_book3s_vec2irqprio (unsigned int) ;
 int kvmppc_update_int_pending (struct kvm_vcpu*,unsigned long,unsigned long) ;

void kvmppc_book3s_dequeue_irqprio(struct kvm_vcpu *vcpu,
       unsigned int vec)
{
 unsigned long old_pending = vcpu->arch.pending_exceptions;

 clear_bit(kvmppc_book3s_vec2irqprio(vec),
    &vcpu->arch.pending_exceptions);

 kvmppc_update_int_pending(vcpu, vcpu->arch.pending_exceptions,
      old_pending);
}
