
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct openpic {scalar_t__ kvm; scalar_t__ mpic_mode_mask; int lock; int nb_cpus; TYPE_1__* dst; } ;
struct TYPE_4__ {size_t irq_cpu_id; int epr_flags; scalar_t__ irq_type; struct openpic* mpic; } ;
struct kvm_vcpu {scalar_t__ kvm; TYPE_2__ arch; } ;
struct kvm_device {int * ops; struct openpic* private; } ;
struct TYPE_3__ {struct kvm_vcpu* vcpu; } ;


 int EBUSY ;
 int EEXIST ;
 int EPERM ;
 scalar_t__ GCR_MODE_PROXY ;
 int KVMPPC_EPR_KERNEL ;
 scalar_t__ KVMPPC_IRQ_MPIC ;
 size_t MAX_CPU ;
 int kvm_mpic_ops ;
 int max (int ,size_t) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

int kvmppc_mpic_connect_vcpu(struct kvm_device *dev, struct kvm_vcpu *vcpu,
        u32 cpu)
{
 struct openpic *opp = dev->private;
 int ret = 0;

 if (dev->ops != &kvm_mpic_ops)
  return -EPERM;
 if (opp->kvm != vcpu->kvm)
  return -EPERM;
 if (cpu < 0 || cpu >= MAX_CPU)
  return -EPERM;

 spin_lock_irq(&opp->lock);

 if (opp->dst[cpu].vcpu) {
  ret = -EEXIST;
  goto out;
 }
 if (vcpu->arch.irq_type) {
  ret = -EBUSY;
  goto out;
 }

 opp->dst[cpu].vcpu = vcpu;
 opp->nb_cpus = max(opp->nb_cpus, cpu + 1);

 vcpu->arch.mpic = opp;
 vcpu->arch.irq_cpu_id = cpu;
 vcpu->arch.irq_type = KVMPPC_IRQ_MPIC;


 if (opp->mpic_mode_mask == GCR_MODE_PROXY)
  vcpu->arch.epr_flags |= KVMPPC_EPR_KERNEL;

out:
 spin_unlock_irq(&opp->lock);
 return ret;
}
