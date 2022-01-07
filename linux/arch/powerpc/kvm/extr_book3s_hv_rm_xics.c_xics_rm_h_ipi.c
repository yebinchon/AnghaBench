
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


union kvmppc_icp_state {unsigned long mfrr; unsigned long cppr; unsigned long pending_pri; scalar_t__ xisr; int need_resend; } ;
typedef scalar_t__ u32 ;
struct kvmppc_xics {int real_mode; } ;
struct kvmppc_icp {unsigned long server_num; int n_check_resend; int n_reject; int state; } ;
struct TYPE_5__ {struct kvmppc_icp* icp; } ;
struct kvm_vcpu {TYPE_3__* kvm; TYPE_2__ arch; } ;
struct TYPE_4__ {struct kvmppc_xics* xics; } ;
struct TYPE_6__ {TYPE_1__ arch; } ;


 int H_PARAMETER ;
 int H_TOO_HARD ;
 union kvmppc_icp_state READ_ONCE (int ) ;
 scalar_t__ XICS_IPI ;
 int check_too_hard (struct kvmppc_xics*,struct kvmppc_icp*) ;
 int icp_rm_check_resend (struct kvmppc_xics*,struct kvmppc_icp*) ;
 int icp_rm_deliver_irq (struct kvmppc_xics*,struct kvmppc_icp*,scalar_t__,int) ;
 int icp_rm_try_update (struct kvmppc_icp*,union kvmppc_icp_state,union kvmppc_icp_state) ;
 struct kvmppc_icp* kvmppc_xics_find_server (TYPE_3__*,unsigned long) ;

int xics_rm_h_ipi(struct kvm_vcpu *vcpu, unsigned long server,
    unsigned long mfrr)
{
 union kvmppc_icp_state old_state, new_state;
 struct kvmppc_xics *xics = vcpu->kvm->arch.xics;
 struct kvmppc_icp *icp, *this_icp = vcpu->arch.icp;
 u32 reject;
 bool resend;
 bool local;

 if (!xics || !xics->real_mode)
  return H_TOO_HARD;

 local = this_icp->server_num == server;
 if (local)
  icp = this_icp;
 else
  icp = kvmppc_xics_find_server(vcpu->kvm, server);
 if (!icp)
  return H_PARAMETER;
 do {
  old_state = new_state = READ_ONCE(icp->state);


  new_state.mfrr = mfrr;


  reject = 0;
  resend = 0;
  if (mfrr < new_state.cppr) {

   if (mfrr <= new_state.pending_pri) {
    reject = new_state.xisr;
    new_state.pending_pri = mfrr;
    new_state.xisr = XICS_IPI;
   }
  }

  if (mfrr > old_state.mfrr) {
   resend = new_state.need_resend;
   new_state.need_resend = 0;
  }
 } while (!icp_rm_try_update(icp, old_state, new_state));


 if (reject && reject != XICS_IPI) {
  this_icp->n_reject++;
  icp_rm_deliver_irq(xics, icp, reject, 0);
 }


 if (resend) {
  this_icp->n_check_resend++;
  icp_rm_check_resend(xics, icp);
 }

 return check_too_hard(xics, this_icp);
}
