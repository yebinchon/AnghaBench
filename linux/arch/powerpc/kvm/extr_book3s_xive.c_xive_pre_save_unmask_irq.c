
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct kvmppc_xive_src_block {int lock; struct kvmppc_xive_irq_state* irq_state; } ;
struct kvmppc_xive_irq_state {scalar_t__ saved_scan_prio; int valid; } ;
struct kvmppc_xive {int dummy; } ;


 scalar_t__ MASKED ;
 int arch_spin_unlock (int *) ;
 int xive_finish_unmask (struct kvmppc_xive*,struct kvmppc_xive_src_block*,struct kvmppc_xive_irq_state*,scalar_t__) ;
 int xive_lock_for_unmask (struct kvmppc_xive_src_block*,struct kvmppc_xive_irq_state*) ;

__attribute__((used)) static void xive_pre_save_unmask_irq(struct kvmppc_xive *xive,
         struct kvmppc_xive_src_block *sb,
         u32 irq)
{
 struct kvmppc_xive_irq_state *state = &sb->irq_state[irq];

 if (!state->valid)
  return;






 xive_lock_for_unmask(sb, state);


 if (state->saved_scan_prio != MASKED)
  xive_finish_unmask(xive, sb, state, state->saved_scan_prio);


 arch_spin_unlock(&sb->lock);
}
