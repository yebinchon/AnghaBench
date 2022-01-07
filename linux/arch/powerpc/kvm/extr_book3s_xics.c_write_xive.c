
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct kvmppc_xics {int dummy; } ;
struct kvmppc_ics {int lock; } ;
struct ics_irq_state {scalar_t__ resend; scalar_t__ masked_pending; scalar_t__ saved_priority; scalar_t__ priority; scalar_t__ server; } ;


 scalar_t__ MASKED ;
 int arch_spin_lock (int *) ;
 int arch_spin_unlock (int *) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

__attribute__((used)) static bool write_xive(struct kvmppc_xics *xics, struct kvmppc_ics *ics,
         struct ics_irq_state *state,
         u32 server, u32 priority, u32 saved_priority)
{
 bool deliver;
 unsigned long flags;

 local_irq_save(flags);
 arch_spin_lock(&ics->lock);

 state->server = server;
 state->priority = priority;
 state->saved_priority = saved_priority;
 deliver = 0;
 if ((state->masked_pending || state->resend) && priority != MASKED) {
  state->masked_pending = 0;
  state->resend = 0;
  deliver = 1;
 }

 arch_spin_unlock(&ics->lock);
 local_irq_restore(flags);

 return deliver;
}
