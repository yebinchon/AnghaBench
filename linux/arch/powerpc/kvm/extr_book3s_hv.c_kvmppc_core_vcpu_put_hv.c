
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvmppc_vcore {scalar_t__ vcore_state; struct kvm_vcpu* runner; } ;
struct TYPE_2__ {scalar_t__ state; int tbacct_lock; int busy_preempt; struct kvmppc_vcore* vcore; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 scalar_t__ KVMPPC_VCPU_BUSY_IN_HOST ;
 scalar_t__ VCORE_SLEEPING ;
 int kvmppc_core_start_stolen (struct kvmppc_vcore*) ;
 int mftb () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void kvmppc_core_vcpu_put_hv(struct kvm_vcpu *vcpu)
{
 struct kvmppc_vcore *vc = vcpu->arch.vcore;
 unsigned long flags;

 if (vc->runner == vcpu && vc->vcore_state >= VCORE_SLEEPING)
  kvmppc_core_start_stolen(vc);

 spin_lock_irqsave(&vcpu->arch.tbacct_lock, flags);
 if (vcpu->arch.state == KVMPPC_VCPU_BUSY_IN_HOST)
  vcpu->arch.busy_preempt = mftb();
 spin_unlock_irqrestore(&vcpu->arch.tbacct_lock, flags);
}
