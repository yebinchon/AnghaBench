
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jit_ctx {int flags; int stack_size; } ;


 int BUILD_BUG_ON (int) ;
 int EBPF_SAVE_RA ;
 int EBPF_SAVE_S0 ;
 int EBPF_SAVE_S1 ;
 int EBPF_SAVE_S2 ;
 int EBPF_SAVE_S3 ;
 int EBPF_SAVE_S4 ;
 int EBPF_SEEN_FP ;
 int EBPF_SEEN_TC ;
 int EBPF_TCC_IN_V1 ;
 int MAX_BPF_STACK ;
 int MAX_TAIL_CALL_CNT ;
 int MIPS_R_RA ;
 int MIPS_R_S0 ;
 int MIPS_R_S1 ;
 int MIPS_R_S2 ;
 int MIPS_R_S3 ;
 int MIPS_R_S4 ;
 int MIPS_R_SP ;
 int MIPS_R_V1 ;
 int MIPS_R_ZERO ;
 int addiu ;
 int addu ;
 int daddiu ;
 int daddu ;
 int emit_instr (struct jit_ctx*,int ,int,int,int ) ;
 int emit_instr_long (struct jit_ctx*,int ,int ,int,int,int) ;
 int sd ;
 int sw ;

__attribute__((used)) static int gen_int_prologue(struct jit_ctx *ctx)
{
 int stack_adjust = 0;
 int store_offset;
 int locals_size;

 if (ctx->flags & EBPF_SAVE_RA)




  stack_adjust += 2 * sizeof(long);
 if (ctx->flags & EBPF_SAVE_S0)
  stack_adjust += sizeof(long);
 if (ctx->flags & EBPF_SAVE_S1)
  stack_adjust += sizeof(long);
 if (ctx->flags & EBPF_SAVE_S2)
  stack_adjust += sizeof(long);
 if (ctx->flags & EBPF_SAVE_S3)
  stack_adjust += sizeof(long);
 if (ctx->flags & EBPF_SAVE_S4)
  stack_adjust += sizeof(long);

 BUILD_BUG_ON(MAX_BPF_STACK & 7);
 locals_size = (ctx->flags & EBPF_SEEN_FP) ? MAX_BPF_STACK : 0;

 stack_adjust += locals_size;

 ctx->stack_size = stack_adjust;






 emit_instr(ctx, addiu, MIPS_R_V1, MIPS_R_ZERO, MAX_TAIL_CALL_CNT);
 if (stack_adjust)
  emit_instr_long(ctx, daddiu, addiu,
     MIPS_R_SP, MIPS_R_SP, -stack_adjust);
 else
  return 0;

 store_offset = stack_adjust - sizeof(long);

 if (ctx->flags & EBPF_SAVE_RA) {
  emit_instr_long(ctx, sd, sw,
     MIPS_R_RA, store_offset, MIPS_R_SP);
  store_offset -= sizeof(long);
 }
 if (ctx->flags & EBPF_SAVE_S0) {
  emit_instr_long(ctx, sd, sw,
     MIPS_R_S0, store_offset, MIPS_R_SP);
  store_offset -= sizeof(long);
 }
 if (ctx->flags & EBPF_SAVE_S1) {
  emit_instr_long(ctx, sd, sw,
     MIPS_R_S1, store_offset, MIPS_R_SP);
  store_offset -= sizeof(long);
 }
 if (ctx->flags & EBPF_SAVE_S2) {
  emit_instr_long(ctx, sd, sw,
     MIPS_R_S2, store_offset, MIPS_R_SP);
  store_offset -= sizeof(long);
 }
 if (ctx->flags & EBPF_SAVE_S3) {
  emit_instr_long(ctx, sd, sw,
     MIPS_R_S3, store_offset, MIPS_R_SP);
  store_offset -= sizeof(long);
 }
 if (ctx->flags & EBPF_SAVE_S4) {
  emit_instr_long(ctx, sd, sw,
     MIPS_R_S4, store_offset, MIPS_R_SP);
  store_offset -= sizeof(long);
 }

 if ((ctx->flags & EBPF_SEEN_TC) && !(ctx->flags & EBPF_TCC_IN_V1))
  emit_instr_long(ctx, daddu, addu,
     MIPS_R_S4, MIPS_R_V1, MIPS_R_ZERO);

 return 0;
}
