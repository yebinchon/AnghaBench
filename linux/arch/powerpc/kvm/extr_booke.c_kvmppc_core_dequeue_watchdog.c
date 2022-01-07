
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pending_exceptions; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int BOOKE_IRQPRIO_WATCHDOG ;
 int clear_bit (int ,int *) ;

__attribute__((used)) static void kvmppc_core_dequeue_watchdog(struct kvm_vcpu *vcpu)
{
 clear_bit(BOOKE_IRQPRIO_WATCHDOG, &vcpu->arch.pending_exceptions);
}
