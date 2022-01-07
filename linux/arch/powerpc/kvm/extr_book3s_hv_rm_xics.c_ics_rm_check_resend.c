
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvmppc_xics {int dummy; } ;
struct kvmppc_ics {struct ics_irq_state* irq_state; } ;
struct kvmppc_icp {int dummy; } ;
struct ics_irq_state {int number; scalar_t__ resend; } ;


 int KVMPPC_XICS_IRQ_PER_ICS ;
 int icp_rm_deliver_irq (struct kvmppc_xics*,struct kvmppc_icp*,int ,int) ;

__attribute__((used)) static void ics_rm_check_resend(struct kvmppc_xics *xics,
    struct kvmppc_ics *ics, struct kvmppc_icp *icp)
{
 int i;

 for (i = 0; i < KVMPPC_XICS_IRQ_PER_ICS; i++) {
  struct ics_irq_state *state = &ics->irq_state[i];
  if (state->resend)
   icp_rm_deliver_irq(xics, icp, state->number, 1);
 }

}
