
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef size_t u16 ;
struct kvmppc_xics {int dummy; } ;
struct kvmppc_ics {int lock; struct ics_irq_state* irq_state; } ;
struct TYPE_2__ {struct kvmppc_xics* xics; } ;
struct kvm {TYPE_1__ arch; } ;
struct ics_irq_state {int priority; int server; } ;


 int EINVAL ;
 int ENODEV ;
 int arch_spin_lock (int *) ;
 int arch_spin_unlock (int *) ;
 struct kvmppc_ics* kvmppc_xics_find_ics (struct kvmppc_xics*,int ,size_t*) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

int kvmppc_xics_get_xive(struct kvm *kvm, u32 irq, u32 *server, u32 *priority)
{
 struct kvmppc_xics *xics = kvm->arch.xics;
 struct kvmppc_ics *ics;
 struct ics_irq_state *state;
 u16 src;
 unsigned long flags;

 if (!xics)
  return -ENODEV;

 ics = kvmppc_xics_find_ics(xics, irq, &src);
 if (!ics)
  return -EINVAL;
 state = &ics->irq_state[src];

 local_irq_save(flags);
 arch_spin_lock(&ics->lock);
 *server = state->server;
 *priority = state->priority;
 arch_spin_unlock(&ics->lock);
 local_irq_restore(flags);

 return 0;
}
