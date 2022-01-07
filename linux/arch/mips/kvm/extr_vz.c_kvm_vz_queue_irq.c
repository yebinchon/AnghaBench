
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pending_exceptions_clr; int pending_exceptions; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int clear_bit (unsigned int,int *) ;
 int set_bit (unsigned int,int *) ;

__attribute__((used)) static void kvm_vz_queue_irq(struct kvm_vcpu *vcpu, unsigned int priority)
{
 set_bit(priority, &vcpu->arch.pending_exceptions);
 clear_bit(priority, &vcpu->arch.pending_exceptions_clr);
}
