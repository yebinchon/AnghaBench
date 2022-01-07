
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef size_t u16 ;
struct kvmppc_xics {int dummy; } ;
struct kvmppc_ics {struct ics_irq_state* irq_state; } ;
struct ics_irq_state {scalar_t__ pq_state; int intr_cpu; scalar_t__ host_irq; scalar_t__ lsi; int exists; } ;


 int EINVAL ;
 scalar_t__ KVM_INTERRUPT_SET ;
 scalar_t__ KVM_INTERRUPT_SET_LEVEL ;
 scalar_t__ KVM_INTERRUPT_UNSET ;
 scalar_t__ PQ_PRESENTED ;
 int XICS_DBG (char*,scalar_t__,...) ;
 scalar_t__ cmpxchg (scalar_t__*,scalar_t__,scalar_t__) ;
 int icp_deliver_irq (struct kvmppc_xics*,int *,scalar_t__,int) ;
 struct kvmppc_ics* kvmppc_xics_find_ics (struct kvmppc_xics*,scalar_t__,size_t*) ;
 int raw_smp_processor_id () ;

__attribute__((used)) static int ics_deliver_irq(struct kvmppc_xics *xics, u32 irq, u32 level)
{
 struct ics_irq_state *state;
 struct kvmppc_ics *ics;
 u16 src;
 u32 pq_old, pq_new;

 XICS_DBG("ics deliver %#x (level: %d)\n", irq, level);

 ics = kvmppc_xics_find_ics(xics, irq, &src);
 if (!ics) {
  XICS_DBG("ics_deliver_irq: IRQ 0x%06x not found !\n", irq);
  return -EINVAL;
 }
 state = &ics->irq_state[src];
 if (!state->exists)
  return -EINVAL;

 if (level == KVM_INTERRUPT_SET_LEVEL || level == KVM_INTERRUPT_SET)
  level = 1;
 else if (level == KVM_INTERRUPT_UNSET)
  level = 0;





 if (!state->lsi && level == 0)
  return 0;

 do {
  pq_old = state->pq_state;
  if (state->lsi) {
   if (level) {
    if (pq_old & PQ_PRESENTED)

     return 0;

    pq_new = PQ_PRESENTED;
   } else
    pq_new = 0;
  } else
   pq_new = ((pq_old << 1) & 3) | PQ_PRESENTED;
 } while (cmpxchg(&state->pq_state, pq_old, pq_new) != pq_old);


 if (pq_new == PQ_PRESENTED)
  icp_deliver_irq(xics, ((void*)0), irq, 0);


 if (state->host_irq)
  state->intr_cpu = raw_smp_processor_id();

 return 0;
}
