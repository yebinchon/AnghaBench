
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;
struct disasm_state {int aa; int src3; int zz; int fault; scalar_t__ src2; int src1; int wb_reg; } ;
struct callee_regs {int dummy; } ;


 int put16_unaligned_check (int ,scalar_t__) ;
 int put32_unaligned_check (int ,scalar_t__) ;
 int set_reg (int ,scalar_t__,struct pt_regs*,struct callee_regs*) ;

__attribute__((used)) static void fixup_store(struct disasm_state *state, struct pt_regs *regs,
   struct callee_regs *cregs)
{

 if ((state->aa == 1) || (state->aa == 2)) {
  set_reg(state->wb_reg, state->src2 + state->src3, regs, cregs);

  if (state->aa == 3)
   state->src3 = 0;
 } else if (state->aa == 3) {
  if (state->zz == 2) {
   set_reg(state->wb_reg, state->src2 + (state->src3 << 1),
    regs, cregs);
  } else if (!state->zz) {
   set_reg(state->wb_reg, state->src2 + (state->src3 << 2),
    regs, cregs);
  } else {
   goto fault;
  }
 }


 if (!state->zz)
  put32_unaligned_check(state->src1, state->src2 + state->src3);
 else
  put16_unaligned_check(state->src1, state->src2 + state->src3);

 return;

fault: state->fault = 1;
}
