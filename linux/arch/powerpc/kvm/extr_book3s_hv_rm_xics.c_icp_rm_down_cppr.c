
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union kvmppc_icp_state {scalar_t__ mfrr; scalar_t__ pending_pri; int need_resend; int xisr; scalar_t__ cppr; } ;
typedef scalar_t__ u8 ;
struct kvmppc_xics {int dummy; } ;
struct kvmppc_icp {int n_check_resend; int state; } ;


 union kvmppc_icp_state READ_ONCE (int ) ;
 int XICS_IPI ;
 int icp_rm_check_resend (struct kvmppc_xics*,struct kvmppc_icp*) ;
 int icp_rm_try_update (struct kvmppc_icp*,union kvmppc_icp_state,union kvmppc_icp_state) ;

__attribute__((used)) static void icp_rm_down_cppr(struct kvmppc_xics *xics, struct kvmppc_icp *icp,
        u8 new_cppr)
{
 union kvmppc_icp_state old_state, new_state;
 bool resend;
 do {
  old_state = new_state = READ_ONCE(icp->state);


  new_state.cppr = new_cppr;
  if (new_state.mfrr < new_cppr &&
      new_state.mfrr <= new_state.pending_pri) {
   new_state.pending_pri = new_state.mfrr;
   new_state.xisr = XICS_IPI;
  }


  resend = new_state.need_resend;
  new_state.need_resend = 0;

 } while (!icp_rm_try_update(icp, old_state, new_state));






 if (resend) {
  icp->n_check_resend++;
  icp_rm_check_resend(xics, icp);
 }
}
