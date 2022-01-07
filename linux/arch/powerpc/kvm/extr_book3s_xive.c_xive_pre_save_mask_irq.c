
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct kvmppc_xive_src_block {int lock; struct kvmppc_xive_irq_state* irq_state; } ;
struct kvmppc_xive_irq_state {int old_q; int saved_q; int old_p; int saved_p; int saved_scan_prio; int valid; } ;
struct kvmppc_xive {int dummy; } ;


 int arch_spin_unlock (int *) ;
 int xive_lock_and_mask (struct kvmppc_xive*,struct kvmppc_xive_src_block*,struct kvmppc_xive_irq_state*) ;

__attribute__((used)) static void xive_pre_save_mask_irq(struct kvmppc_xive *xive,
       struct kvmppc_xive_src_block *sb,
       u32 irq)
{
 struct kvmppc_xive_irq_state *state = &sb->irq_state[irq];

 if (!state->valid)
  return;


 state->saved_scan_prio = xive_lock_and_mask(xive, sb, state);


 state->saved_p = state->old_p;
 state->saved_q = state->old_q;


 arch_spin_unlock(&sb->lock);
}
