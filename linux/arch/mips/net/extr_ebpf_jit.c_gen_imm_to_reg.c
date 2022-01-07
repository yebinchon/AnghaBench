
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jit_ctx {int dummy; } ;
struct bpf_insn {int imm; } ;
typedef int s16 ;


 int MIPS_R_ZERO ;
 int S16_MAX ;
 int S16_MIN ;
 int addiu ;
 int emit_instr (struct jit_ctx*,int ,int,int,...) ;
 int lui ;

__attribute__((used)) static void gen_imm_to_reg(const struct bpf_insn *insn, int reg,
      struct jit_ctx *ctx)
{
 if (insn->imm >= S16_MIN && insn->imm <= S16_MAX) {
  emit_instr(ctx, addiu, reg, MIPS_R_ZERO, insn->imm);
 } else {
  int lower = (s16)(insn->imm & 0xffff);
  int upper = insn->imm - lower;

  emit_instr(ctx, lui, reg, upper >> 16);
  emit_instr(ctx, addiu, reg, reg, lower);
 }
}
