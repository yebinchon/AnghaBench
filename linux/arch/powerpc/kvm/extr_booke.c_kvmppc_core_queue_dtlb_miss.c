
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* ulong ;
struct TYPE_2__ {void* queued_esr; void* queued_dear; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int BOOKE_IRQPRIO_DTLB_MISS ;
 int kvmppc_booke_queue_irqprio (struct kvm_vcpu*,int ) ;

void kvmppc_core_queue_dtlb_miss(struct kvm_vcpu *vcpu,
     ulong dear_flags, ulong esr_flags)
{
 vcpu->arch.queued_dear = dear_flags;
 vcpu->arch.queued_esr = esr_flags;
 kvmppc_booke_queue_irqprio(vcpu, BOOKE_IRQPRIO_DTLB_MISS);
}
