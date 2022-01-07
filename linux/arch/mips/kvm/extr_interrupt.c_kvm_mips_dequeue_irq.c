
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pending_exceptions; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int clear_bit (unsigned int,int *) ;

void kvm_mips_dequeue_irq(struct kvm_vcpu *vcpu, unsigned int priority)
{
 clear_bit(priority, &vcpu->arch.pending_exceptions);
}
