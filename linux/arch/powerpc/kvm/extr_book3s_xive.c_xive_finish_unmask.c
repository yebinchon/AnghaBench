
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct xive_irq_data {int flags; } ;
struct kvmppc_xive_src_block {int dummy; } ;
struct kvmppc_xive_irq_state {scalar_t__ guest_priority; int old_p; scalar_t__ old_q; int number; int act_priority; int act_server; } ;
struct kvmppc_xive {int dummy; } ;


 scalar_t__ MASKED ;
 int OPAL_XIVE_IRQ_LSI ;
 int OPAL_XIVE_IRQ_MASK_VIA_FW ;
 int XIVE_ESB_SET_PQ_11 ;
 int kvmppc_xive_select_irq (struct kvmppc_xive_irq_state*,int *,struct xive_irq_data**) ;
 int kvmppc_xive_vp (struct kvmppc_xive*,int ) ;
 int mb () ;
 int xive_irq_trigger (struct xive_irq_data*) ;
 int xive_native_configure_irq (int ,int ,int ,int ) ;
 int xive_vm_esb_load (struct xive_irq_data*,int ) ;
 int xive_vm_source_eoi (int ,struct xive_irq_data*) ;

__attribute__((used)) static void xive_finish_unmask(struct kvmppc_xive *xive,
          struct kvmppc_xive_src_block *sb,
          struct kvmppc_xive_irq_state *state,
          u8 prio)
{
 struct xive_irq_data *xd;
 u32 hw_num;


 if (state->guest_priority != MASKED)
  goto bail;


 kvmppc_xive_select_irq(state, &hw_num, &xd);





 if (xd->flags & OPAL_XIVE_IRQ_MASK_VIA_FW) {
  xive_native_configure_irq(hw_num,
    kvmppc_xive_vp(xive, state->act_server),
    state->act_priority, state->number);

  if (!state->old_p)
   xive_vm_source_eoi(hw_num, xd);

  if (!(xd->flags & OPAL_XIVE_IRQ_LSI))
   xive_irq_trigger(xd);
  goto bail;
 }


 if (state->old_q)
  xive_vm_esb_load(xd, XIVE_ESB_SET_PQ_11);






 if (!state->old_p)
  xive_vm_source_eoi(hw_num, xd);


 mb();
bail:
 state->guest_priority = prio;
}
