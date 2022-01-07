
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u64 ;
typedef int u32 ;
struct xive_irq_data {int flags; } ;
struct kvmppc_xive_src_block {int lock; } ;
struct kvmppc_xive_irq_state {scalar_t__ guest_priority; int old_p; int old_q; int number; int act_server; int in_eoi; } ;
struct kvmppc_xive {int dummy; } ;


 scalar_t__ MASKED ;
 int OPAL_XIVE_IRQ_MASK_VIA_FW ;
 int XIVE_ESB_SET_PQ_10 ;
 int arch_spin_lock (int *) ;
 int arch_spin_unlock (int *) ;
 int kvmppc_xive_select_irq (struct kvmppc_xive_irq_state*,int *,struct xive_irq_data**) ;
 int kvmppc_xive_vp (struct kvmppc_xive*,int ) ;
 int mb () ;
 int xive_native_configure_irq (int ,int ,scalar_t__,int ) ;
 int xive_native_sync_source (int ) ;
 int xive_vm_esb_load (struct xive_irq_data*,int ) ;

__attribute__((used)) static u8 xive_lock_and_mask(struct kvmppc_xive *xive,
        struct kvmppc_xive_src_block *sb,
        struct kvmppc_xive_irq_state *state)
{
 struct xive_irq_data *xd;
 u32 hw_num;
 u8 old_prio;
 u64 val;





 for (;;) {
  arch_spin_lock(&sb->lock);
  old_prio = state->guest_priority;
  state->guest_priority = MASKED;
  mb();
  if (!state->in_eoi)
   break;
  state->guest_priority = old_prio;
  arch_spin_unlock(&sb->lock);
 }


 if (old_prio == MASKED)
  return old_prio;


 kvmppc_xive_select_irq(state, &hw_num, &xd);
 if (xd->flags & OPAL_XIVE_IRQ_MASK_VIA_FW) {
  xive_native_configure_irq(hw_num,
    kvmppc_xive_vp(xive, state->act_server),
    MASKED, state->number);

  state->old_p = 1;
  state->old_q = 0;
 } else {

  val = xive_vm_esb_load(xd, XIVE_ESB_SET_PQ_10);
  state->old_p = !!(val & 2);
  state->old_q = !!(val & 1);





  xive_native_sync_source(hw_num);
 }

 return old_prio;
}
