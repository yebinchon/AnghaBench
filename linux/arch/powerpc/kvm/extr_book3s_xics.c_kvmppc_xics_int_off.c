
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef size_t u16 ;
struct kvmppc_xics {int dummy; } ;
struct kvmppc_ics {struct ics_irq_state* irq_state; } ;
struct TYPE_2__ {struct kvmppc_xics* xics; } ;
struct kvm {TYPE_1__ arch; } ;
struct ics_irq_state {int priority; int server; } ;


 int EINVAL ;
 int ENODEV ;
 int MASKED ;
 struct kvmppc_ics* kvmppc_xics_find_ics (struct kvmppc_xics*,int ,size_t*) ;
 int write_xive (struct kvmppc_xics*,struct kvmppc_ics*,struct ics_irq_state*,int ,int ,int ) ;

int kvmppc_xics_int_off(struct kvm *kvm, u32 irq)
{
 struct kvmppc_xics *xics = kvm->arch.xics;
 struct kvmppc_ics *ics;
 struct ics_irq_state *state;
 u16 src;

 if (!xics)
  return -ENODEV;

 ics = kvmppc_xics_find_ics(xics, irq, &src);
 if (!ics)
  return -EINVAL;
 state = &ics->irq_state[src];

 write_xive(xics, ics, state, state->server, MASKED, state->priority);

 return 0;
}
