
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct openpic {int gcr; int mpic_mode_mask; int lock; int * dst; } ;
struct TYPE_2__ {int irq_cpu_id; struct openpic* mpic; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int GCR_MODE_PROXY ;
 int kvmppc_set_epr (struct kvm_vcpu*,int ) ;
 int openpic_iack (struct openpic*,int *,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void kvmppc_mpic_set_epr(struct kvm_vcpu *vcpu)
{
 struct openpic *opp = vcpu->arch.mpic;
 int cpu = vcpu->arch.irq_cpu_id;
 unsigned long flags;

 spin_lock_irqsave(&opp->lock, flags);

 if ((opp->gcr & opp->mpic_mode_mask) == GCR_MODE_PROXY)
  kvmppc_set_epr(vcpu, openpic_iack(opp, &opp->dst[cpu], cpu));

 spin_unlock_irqrestore(&opp->lock, flags);
}
