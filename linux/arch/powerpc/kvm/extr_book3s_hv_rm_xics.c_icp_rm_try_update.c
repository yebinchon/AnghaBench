
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


union kvmppc_icp_state {int out_ee; scalar_t__ pending_pri; scalar_t__ cppr; scalar_t__ raw; scalar_t__ xisr; } ;
struct TYPE_6__ {int raw; } ;
struct kvmppc_icp {int vcpu; TYPE_1__ state; } ;
struct TYPE_8__ {TYPE_2__* icp; } ;
struct kvm_vcpu {TYPE_3__ arch; } ;
struct TYPE_9__ {struct kvm_vcpu* kvm_vcpu; } ;
struct TYPE_10__ {TYPE_4__ kvm_hstate; } ;
struct TYPE_7__ {int rm_dbgtgt; union kvmppc_icp_state rm_dbgstate; } ;


 scalar_t__ cmpxchg64 (int *,scalar_t__,scalar_t__) ;
 int icp_rm_set_vcpu_irq (int ,struct kvm_vcpu*) ;
 TYPE_5__* local_paca ;

__attribute__((used)) static inline bool icp_rm_try_update(struct kvmppc_icp *icp,
         union kvmppc_icp_state old,
         union kvmppc_icp_state new)
{
 struct kvm_vcpu *this_vcpu = local_paca->kvm_hstate.kvm_vcpu;
 bool success;


 new.out_ee = (new.xisr && (new.pending_pri < new.cppr));


 success = cmpxchg64(&icp->state.raw, old.raw, new.raw) == old.raw;
 if (!success)
  goto bail;
 if (new.out_ee)
  icp_rm_set_vcpu_irq(icp->vcpu, this_vcpu);


 this_vcpu->arch.icp->rm_dbgstate = new;
 this_vcpu->arch.icp->rm_dbgtgt = icp->vcpu;

 bail:
 return success;
}
