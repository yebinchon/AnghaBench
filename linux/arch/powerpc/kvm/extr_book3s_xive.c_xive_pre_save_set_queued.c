
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef size_t u16 ;
struct kvmppc_xive_src_block {struct kvmppc_xive_irq_state* irq_state; } ;
struct kvmppc_xive_irq_state {int in_queue; int saved_p; int valid; } ;
struct kvmppc_xive {int dummy; } ;


 struct kvmppc_xive_src_block* kvmppc_xive_find_source (struct kvmppc_xive*,int ,size_t*) ;
 int pr_err (char*,int ) ;

__attribute__((used)) static void xive_pre_save_set_queued(struct kvmppc_xive *xive, u32 irq)
{
 struct kvmppc_xive_src_block *sb;
 struct kvmppc_xive_irq_state *state;
 u16 idx;

 sb = kvmppc_xive_find_source(xive, irq, &idx);
 if (!sb)
  return;

 state = &sb->irq_state[idx];


 if (!state->valid) {
  pr_err("invalid irq 0x%x in cpu queue!\n", irq);
  return;
 }






 if (!state->saved_p)
  pr_err("Interrupt 0x%x is marked in a queue but P not set !\n", irq);


 state->in_queue = 1;
}
