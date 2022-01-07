
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union kvmppc_icp_state {scalar_t__ mfrr; scalar_t__ pending_pri; scalar_t__ xisr; int need_resend; scalar_t__ cppr; } ;
typedef scalar_t__ u8 ;
struct kvmppc_xics {int dummy; } ;
struct kvmppc_icp {int state; } ;


 union kvmppc_icp_state READ_ONCE (int ) ;
 int WARN_ON (int) ;
 scalar_t__ XICS_IPI ;
 int icp_check_resend (struct kvmppc_xics*,struct kvmppc_icp*) ;
 int icp_try_update (struct kvmppc_icp*,union kvmppc_icp_state,union kvmppc_icp_state,int) ;

__attribute__((used)) static void icp_down_cppr(struct kvmppc_xics *xics, struct kvmppc_icp *icp,
     u8 new_cppr)
{
 union kvmppc_icp_state old_state, new_state;
 bool resend;
 do {
  old_state = new_state = READ_ONCE(icp->state);


  new_state.cppr = new_cppr;
  if (new_state.mfrr < new_cppr &&
      new_state.mfrr <= new_state.pending_pri) {
   WARN_ON(new_state.xisr != XICS_IPI &&
    new_state.xisr != 0);
   new_state.pending_pri = new_state.mfrr;
   new_state.xisr = XICS_IPI;
  }


  resend = new_state.need_resend;
  new_state.need_resend = 0;

 } while (!icp_try_update(icp, old_state, new_state, 1));






 if (resend)
  icp_check_resend(xics, icp);
}
