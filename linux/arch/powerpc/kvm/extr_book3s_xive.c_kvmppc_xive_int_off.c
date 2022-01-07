
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef size_t u16 ;
struct kvmppc_xive_src_block {int lock; struct kvmppc_xive_irq_state* irq_state; } ;
struct kvmppc_xive_irq_state {int saved_priority; } ;
struct kvmppc_xive {int dummy; } ;
struct TYPE_2__ {struct kvmppc_xive* xive; } ;
struct kvm {TYPE_1__ arch; } ;


 int EINVAL ;
 int ENODEV ;
 int arch_spin_unlock (int *) ;
 struct kvmppc_xive_src_block* kvmppc_xive_find_source (struct kvmppc_xive*,int ,size_t*) ;
 int pr_devel (char*,int ) ;
 int xive_lock_and_mask (struct kvmppc_xive*,struct kvmppc_xive_src_block*,struct kvmppc_xive_irq_state*) ;

int kvmppc_xive_int_off(struct kvm *kvm, u32 irq)
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

 pr_devel("int_off(irq=0x%x)\n", irq);




 state->saved_priority = xive_lock_and_mask(xive, sb, state);
 arch_spin_unlock(&sb->lock);

 return 0;
}
