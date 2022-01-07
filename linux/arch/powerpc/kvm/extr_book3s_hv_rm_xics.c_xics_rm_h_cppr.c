
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


union kvmppc_icp_state {unsigned long cppr; unsigned long pending_pri; scalar_t__ xisr; } ;
typedef scalar_t__ u32 ;
struct kvmppc_xics {int real_mode; } ;
struct TYPE_8__ {unsigned long cppr; } ;
struct kvmppc_icp {int n_reject; TYPE_4__ state; int vcpu; } ;
struct TYPE_7__ {struct kvmppc_icp* icp; } ;
struct kvm_vcpu {TYPE_3__ arch; TYPE_2__* kvm; } ;
struct TYPE_5__ {struct kvmppc_xics* xics; } ;
struct TYPE_6__ {TYPE_1__ arch; } ;


 int H_SUCCESS ;
 int H_TOO_HARD ;
 union kvmppc_icp_state READ_ONCE (TYPE_4__) ;
 scalar_t__ XICS_IPI ;
 int check_too_hard (struct kvmppc_xics*,struct kvmppc_icp*) ;
 int icp_rm_clr_vcpu_irq (int ) ;
 int icp_rm_deliver_irq (struct kvmppc_xics*,struct kvmppc_icp*,scalar_t__,int) ;
 int icp_rm_down_cppr (struct kvmppc_xics*,struct kvmppc_icp*,unsigned long) ;
 int icp_rm_try_update (struct kvmppc_icp*,union kvmppc_icp_state,union kvmppc_icp_state) ;

int xics_rm_h_cppr(struct kvm_vcpu *vcpu, unsigned long cppr)
{
 union kvmppc_icp_state old_state, new_state;
 struct kvmppc_xics *xics = vcpu->kvm->arch.xics;
 struct kvmppc_icp *icp = vcpu->arch.icp;
 u32 reject;

 if (!xics || !xics->real_mode)
  return H_TOO_HARD;
 if (cppr > icp->state.cppr) {
  icp_rm_down_cppr(xics, icp, cppr);
  goto bail;
 } else if (cppr == icp->state.cppr)
  return H_SUCCESS;
 icp_rm_clr_vcpu_irq(icp->vcpu);

 do {
  old_state = new_state = READ_ONCE(icp->state);

  reject = 0;
  new_state.cppr = cppr;

  if (cppr <= new_state.pending_pri) {
   reject = new_state.xisr;
   new_state.xisr = 0;
   new_state.pending_pri = 0xff;
  }

 } while (!icp_rm_try_update(icp, old_state, new_state));





 if (reject && reject != XICS_IPI) {
  icp->n_reject++;
  icp_rm_deliver_irq(xics, icp, reject, 0);
 }
 bail:
 return check_too_hard(xics, icp);
}
