
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef size_t u16 ;
struct kvmppc_xics {int kvm; } ;
struct kvmppc_ics {int lock; int icsid; struct ics_irq_state* irq_state; } ;
struct TYPE_2__ {int need_resend; } ;
struct kvmppc_icp {scalar_t__ server_num; TYPE_1__ state; int resend_map; } ;
struct ics_irq_state {scalar_t__ server; int resend; scalar_t__ priority; int masked_pending; } ;


 scalar_t__ MASKED ;
 int XICS_DBG (char*,scalar_t__) ;
 scalar_t__ XICS_IPI ;
 int arch_spin_lock (int *) ;
 int arch_spin_unlock (int *) ;
 scalar_t__ icp_try_to_deliver (struct kvmppc_icp*,scalar_t__,scalar_t__,scalar_t__*) ;
 struct kvmppc_ics* kvmppc_xics_find_ics (struct kvmppc_xics*,scalar_t__,size_t*) ;
 struct kvmppc_icp* kvmppc_xics_find_server (int ,scalar_t__) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int pr_warn (char*,scalar_t__,scalar_t__) ;
 int set_bit (int ,int ) ;
 int smp_mb () ;
 int smp_wmb () ;

__attribute__((used)) static void icp_deliver_irq(struct kvmppc_xics *xics, struct kvmppc_icp *icp,
       u32 new_irq, bool check_resend)
{
 struct ics_irq_state *state;
 struct kvmppc_ics *ics;
 u32 reject;
 u16 src;
 unsigned long flags;
 again:

 ics = kvmppc_xics_find_ics(xics, new_irq, &src);
 if (!ics) {
  XICS_DBG("icp_deliver_irq: IRQ 0x%06x not found !\n", new_irq);
  return;
 }
 state = &ics->irq_state[src];


 local_irq_save(flags);
 arch_spin_lock(&ics->lock);


 if (!icp || state->server != icp->server_num) {
  icp = kvmppc_xics_find_server(xics->kvm, state->server);
  if (!icp) {
   pr_warn("icp_deliver_irq: IRQ 0x%06x server 0x%x not found !\n",
    new_irq, state->server);
   goto out;
  }
 }

 if (check_resend)
  if (!state->resend)
   goto out;


 state->resend = 0;
 if (state->priority == MASKED) {
  XICS_DBG("irq %#x masked pending\n", new_irq);
  state->masked_pending = 1;
  goto out;
 }
 if (icp_try_to_deliver(icp, new_irq, state->priority, &reject)) {



  if (reject && reject != XICS_IPI) {
   arch_spin_unlock(&ics->lock);
   local_irq_restore(flags);
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
   local_irq_restore(flags);
   check_resend = 0;
   goto again;
  }
 }
 out:
 arch_spin_unlock(&ics->lock);
 local_irq_restore(flags);
}
