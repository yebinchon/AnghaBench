
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef size_t u16 ;
struct kvmppc_xive_src_block {struct kvmppc_xive_irq_state* irq_state; } ;
struct kvmppc_xive_irq_state {int ipi_data; int valid; } ;
struct kvmppc_xive {int dummy; } ;


 struct kvmppc_xive_src_block* kvmppc_xive_find_source (struct kvmppc_xive*,int ,size_t*) ;
 int xive_irq_trigger (int *) ;

__attribute__((used)) static bool xive_restore_pending_irq(struct kvmppc_xive *xive, u32 irq)
{
 struct kvmppc_xive_src_block *sb;
 struct kvmppc_xive_irq_state *state;
 u16 idx;

 sb = kvmppc_xive_find_source(xive, irq, &idx);
 if (!sb)
  return 0;
 state = &sb->irq_state[idx];
 if (!state->valid)
  return 0;





 xive_irq_trigger(&state->ipi_data);

 return 1;
}
