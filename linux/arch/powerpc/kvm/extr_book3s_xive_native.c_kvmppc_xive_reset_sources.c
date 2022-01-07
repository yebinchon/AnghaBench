
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvmppc_xive_src_block {struct kvmppc_xive_irq_state* irq_state; } ;
struct kvmppc_xive_irq_state {scalar_t__ act_priority; scalar_t__ pt_number; int * pt_data; scalar_t__ ipi_number; int ipi_data; scalar_t__ act_server; scalar_t__ eisn; int valid; } ;


 int KVMPPC_XICS_IRQ_PER_ICS ;
 scalar_t__ MASKED ;
 int XIVE_ESB_SET_PQ_01 ;
 int xive_native_configure_irq (scalar_t__,int ,scalar_t__,int ) ;
 int xive_vm_esb_load (int *,int ) ;

__attribute__((used)) static void kvmppc_xive_reset_sources(struct kvmppc_xive_src_block *sb)
{
 int i;

 for (i = 0; i < KVMPPC_XICS_IRQ_PER_ICS; i++) {
  struct kvmppc_xive_irq_state *state = &sb->irq_state[i];

  if (!state->valid)
   continue;

  if (state->act_priority == MASKED)
   continue;

  state->eisn = 0;
  state->act_server = 0;
  state->act_priority = MASKED;
  xive_vm_esb_load(&state->ipi_data, XIVE_ESB_SET_PQ_01);
  xive_native_configure_irq(state->ipi_number, 0, MASKED, 0);
  if (state->pt_number) {
   xive_vm_esb_load(state->pt_data, XIVE_ESB_SET_PQ_01);
   xive_native_configure_irq(state->pt_number,
        0, MASKED, 0);
  }
 }
}
