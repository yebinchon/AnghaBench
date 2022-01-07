
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvmppc_xics {int dummy; } ;
struct kvmppc_ics {struct ics_irq_state* irq_state; } ;
struct kvmppc_icp {int dummy; } ;
struct ics_irq_state {int number; int priority; scalar_t__ resend; } ;


 int KVMPPC_XICS_IRQ_PER_ICS ;
 int XICS_DBG (char*,int ,int ) ;
 int icp_deliver_irq (struct kvmppc_xics*,struct kvmppc_icp*,int ,int) ;

__attribute__((used)) static void ics_check_resend(struct kvmppc_xics *xics, struct kvmppc_ics *ics,
        struct kvmppc_icp *icp)
{
 int i;

 for (i = 0; i < KVMPPC_XICS_IRQ_PER_ICS; i++) {
  struct ics_irq_state *state = &ics->irq_state[i];
  if (state->resend) {
   XICS_DBG("resend %#x prio %#x\n", state->number,
          state->priority);
   icp_deliver_irq(xics, icp, state->number, 1);
  }
 }
}
