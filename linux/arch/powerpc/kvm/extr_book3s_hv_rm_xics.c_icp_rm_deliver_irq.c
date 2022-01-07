
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef size_t u16 ;
struct kvmppc_xics {int err_noicp; int kvm; int err_noics; } ;
struct kvmppc_ics {int lock; int icsid; struct ics_irq_state* irq_state; } ;
struct TYPE_2__ {int need_resend; } ;
struct kvmppc_icp {scalar_t__ server_num; TYPE_1__ state; int resend_map; int n_reject; } ;
struct ics_irq_state {scalar_t__ server; int resend; scalar_t__ priority; int masked_pending; } ;


 scalar_t__ MASKED ;
 scalar_t__ XICS_IPI ;
 int arch_spin_lock (int *) ;
 int arch_spin_unlock (int *) ;
 scalar_t__ icp_rm_try_to_deliver (struct kvmppc_icp*,scalar_t__,scalar_t__,scalar_t__*) ;
 struct kvmppc_ics* kvmppc_xics_find_ics (struct kvmppc_xics*,scalar_t__,size_t*) ;
 struct kvmppc_icp* kvmppc_xics_find_server (int ,scalar_t__) ;
 int set_bit (int ,int ) ;
 int smp_mb () ;
 int smp_wmb () ;

__attribute__((used)) static void icp_rm_deliver_irq(struct kvmppc_xics *xics, struct kvmppc_icp *icp,
       u32 new_irq, bool check_resend)
{
 struct ics_irq_state *state;
 struct kvmppc_ics *ics;
 u32 reject;
 u16 src;
 again:

 ics = kvmppc_xics_find_ics(xics, new_irq, &src);
 if (!ics) {

  xics->err_noics++;
  return;
 }
 state = &ics->irq_state[src];


 arch_spin_lock(&ics->lock);


 if (!icp || state->server != icp->server_num) {
  icp = kvmppc_xics_find_server(xics->kvm, state->server);
  if (!icp) {

   xics->err_noicp++;
   goto out;
  }
 }

 if (check_resend)
  if (!state->resend)
   goto out;


 state->resend = 0;
 if (state->priority == MASKED) {
  state->masked_pending = 1;
  goto out;
 }
 if (icp_rm_try_to_deliver(icp, new_irq, state->priority, &reject)) {



  if (reject && reject != XICS_IPI) {
   arch_spin_unlock(&ics->lock);
   icp->n_reject++;
   new_irq = reject;
   check_resend = 0;
   goto again;
  }
 } else {




  state->resend = 1;





  smp_wmb();
  set_bit(ics->icsid, icp->resend_map);







  smp_mb();
  if (!icp->state.need_resend) {
   state->resend = 0;
   arch_spin_unlock(&ics->lock);
   check_resend = 0;
   goto again;
  }
 }
 out:
 arch_spin_unlock(&ics->lock);
}
