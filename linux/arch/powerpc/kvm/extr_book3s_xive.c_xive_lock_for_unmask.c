
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvmppc_xive_src_block {int lock; } ;
struct kvmppc_xive_irq_state {int in_eoi; } ;


 int arch_spin_lock (int *) ;
 int arch_spin_unlock (int *) ;

__attribute__((used)) static void xive_lock_for_unmask(struct kvmppc_xive_src_block *sb,
     struct kvmppc_xive_irq_state *state)
{



 for (;;) {
  arch_spin_lock(&sb->lock);
  if (!state->in_eoi)
   break;
  arch_spin_unlock(&sb->lock);
 }
}
