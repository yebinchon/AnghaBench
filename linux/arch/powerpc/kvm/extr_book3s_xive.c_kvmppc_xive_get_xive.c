
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef size_t u16 ;
struct kvmppc_xive_src_block {int lock; struct kvmppc_xive_irq_state* irq_state; } ;
struct kvmppc_xive_irq_state {int guest_priority; int act_server; } ;
struct kvmppc_xive {int dummy; } ;
struct TYPE_2__ {struct kvmppc_xive* xive; } ;
struct kvm {TYPE_1__ arch; } ;


 int EINVAL ;
 int ENODEV ;
 int arch_spin_lock (int *) ;
 int arch_spin_unlock (int *) ;
 struct kvmppc_xive_src_block* kvmppc_xive_find_source (struct kvmppc_xive*,int ,size_t*) ;

int kvmppc_xive_get_xive(struct kvm *kvm, u32 irq, u32 *server,
    u32 *priority)
{
 struct kvmppc_xive *xive = kvm->arch.xive;
 struct kvmppc_xive_src_block *sb;
 struct kvmppc_xive_irq_state *state;
 u16 idx;

 if (!xive)
  return -ENODEV;

 sb = kvmppc_xive_find_source(xive, irq, &idx);
 if (!sb)
  return -EINVAL;
 state = &sb->irq_state[idx];
 arch_spin_lock(&sb->lock);
 *server = state->act_server;
 *priority = state->guest_priority;
 arch_spin_unlock(&sb->lock);

 return 0;
}
