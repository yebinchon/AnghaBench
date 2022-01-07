
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ulong ;
struct TYPE_2__ {int queued_esr; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int BOOKE_IRQPRIO_INST_STORAGE ;
 int kvmppc_booke_queue_irqprio (struct kvm_vcpu*,int ) ;

void kvmppc_core_queue_inst_storage(struct kvm_vcpu *vcpu, ulong esr_flags)
{
 vcpu->arch.queued_esr = esr_flags;
 kvmppc_booke_queue_irqprio(vcpu, BOOKE_IRQPRIO_INST_STORAGE);
}
