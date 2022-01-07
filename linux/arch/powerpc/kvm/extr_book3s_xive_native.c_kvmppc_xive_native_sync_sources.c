
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xive_irq_data {int dummy; } ;
struct kvmppc_xive_src_block {struct kvmppc_xive_irq_state* irq_state; } ;
struct kvmppc_xive_irq_state {scalar_t__ act_priority; int valid; } ;


 int KVMPPC_XICS_IRQ_PER_ICS ;
 scalar_t__ MASKED ;
 int kvmppc_xive_select_irq (struct kvmppc_xive_irq_state*,int *,struct xive_irq_data**) ;
 int xive_native_sync_queue (int ) ;
 int xive_native_sync_source (int ) ;

__attribute__((used)) static void kvmppc_xive_native_sync_sources(struct kvmppc_xive_src_block *sb)
{
 int j;

 for (j = 0; j < KVMPPC_XICS_IRQ_PER_ICS; j++) {
  struct kvmppc_xive_irq_state *state = &sb->irq_state[j];
  struct xive_irq_data *xd;
  u32 hw_num;

  if (!state->valid)
   continue;
  if (state->act_priority == MASKED)
   continue;

  kvmppc_xive_select_irq(state, &hw_num, &xd);
  xive_native_sync_source(hw_num);
  xive_native_sync_queue(hw_num);
 }
}
