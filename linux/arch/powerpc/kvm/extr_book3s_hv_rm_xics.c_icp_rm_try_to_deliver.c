
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union kvmppc_icp_state {scalar_t__ cppr; scalar_t__ mfrr; scalar_t__ pending_pri; int need_resend; int xisr; } ;
typedef scalar_t__ u8 ;
typedef int u32 ;
struct kvmppc_icp {int state; } ;


 union kvmppc_icp_state READ_ONCE (int ) ;
 int icp_rm_try_update (struct kvmppc_icp*,union kvmppc_icp_state,union kvmppc_icp_state) ;

__attribute__((used)) static bool icp_rm_try_to_deliver(struct kvmppc_icp *icp, u32 irq, u8 priority,
          u32 *reject)
{
 union kvmppc_icp_state old_state, new_state;
 bool success;

 do {
  old_state = new_state = READ_ONCE(icp->state);

  *reject = 0;


  success = new_state.cppr > priority &&
   new_state.mfrr > priority &&
   new_state.pending_pri > priority;





  if (success) {
   *reject = new_state.xisr;
   new_state.xisr = irq;
   new_state.pending_pri = priority;
  } else {





   new_state.need_resend = 1;
  }

 } while (!icp_rm_try_update(icp, old_state, new_state));

 return success;
}
