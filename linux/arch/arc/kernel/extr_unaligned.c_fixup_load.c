
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;
struct disasm_state {int aa; int src1; int src2; scalar_t__ zz; scalar_t__ pref; int fault; int dest; scalar_t__ x; int wb_reg; } ;
struct callee_regs {int dummy; } ;


 int get16_unaligned_check (int,int) ;
 int get32_unaligned_check (int,int) ;
 int set_reg (int ,int,struct pt_regs*,struct callee_regs*) ;

__attribute__((used)) static void fixup_load(struct disasm_state *state, struct pt_regs *regs,
   struct callee_regs *cregs)
{
 int val;


 if ((state->aa == 1) || (state->aa == 2)) {
  set_reg(state->wb_reg, state->src1 + state->src2, regs, cregs);

  if (state->aa == 2)
   state->src2 = 0;
 }

 if (state->zz == 0) {
  get32_unaligned_check(val, state->src1 + state->src2);
 } else {
  get16_unaligned_check(val, state->src1 + state->src2);

  if (state->x)
   val = (val << 16) >> 16;
 }

 if (state->pref == 0)
  set_reg(state->dest, val, regs, cregs);

 return;

fault: state->fault = 1;
}
