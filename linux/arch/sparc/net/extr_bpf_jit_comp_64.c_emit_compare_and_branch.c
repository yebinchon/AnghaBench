
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct jit_ctx {int* offset; int tmp_1_used; scalar_t__ idx; } ;
typedef int s32 ;


 int AV_SPARC_CBCOND ;
 int BE ;
 int BG ;
 int BGE ;
 int BGEU ;
 int BGU ;
 int BL ;
 int BLE ;
 int BLEU ;
 int BLU ;
 int BNE ;
 int BPF_OP (int const) ;
 int CBCONDE ;
 int CBCONDG ;
 int CBCONDGE ;
 int CBCONDGEU ;
 int CBCONDGU ;
 int CBCONDL ;
 int CBCONDLE ;
 int CBCONDLEU ;
 int CBCONDLU ;
 int CBCONDNE ;
 int CBCOND_OP ;
 int EFAULT ;
 size_t TMP_REG_1 ;
 int * bpf2sparc ;
 int emit_branch (int ,scalar_t__,int,struct jit_ctx*) ;
 int emit_btst (int const,int ,struct jit_ctx*) ;
 int emit_btsti (int const,int const,struct jit_ctx*) ;
 int emit_cbcond (int ,scalar_t__,int,int const,int ,struct jit_ctx*) ;
 int emit_cbcondi (int ,scalar_t__,int,int const,int const,struct jit_ctx*) ;
 int emit_cmp (int const,int ,struct jit_ctx*) ;
 int emit_cmpi (int const,int const,struct jit_ctx*) ;
 int emit_loadimm_sext (int const,int const,struct jit_ctx*) ;
 int emit_nop (struct jit_ctx*) ;
 int is_simm10 (scalar_t__) ;
 int is_simm13 (int const) ;
 int is_simm5 (int const) ;
 int sparc64_elf_hwcap ;

__attribute__((used)) static int emit_compare_and_branch(const u8 code, const u8 dst, u8 src,
       const s32 imm, bool is_imm, int branch_dst,
       struct jit_ctx *ctx)
{
 bool use_cbcond = (sparc64_elf_hwcap & AV_SPARC_CBCOND) != 0;
 const u8 tmp = bpf2sparc[TMP_REG_1];

 branch_dst = ctx->offset[branch_dst];

 if (!is_simm10(branch_dst - ctx->idx) ||
     BPF_OP(code) == 132)
  use_cbcond = 0;

 if (is_imm) {
  bool fits = 1;

  if (use_cbcond) {
   if (!is_simm5(imm))
    fits = 0;
  } else if (!is_simm13(imm)) {
   fits = 0;
  }
  if (!fits) {
   ctx->tmp_1_used = 1;
   emit_loadimm_sext(imm, tmp, ctx);
   src = tmp;
   is_imm = 0;
  }
 }

 if (!use_cbcond) {
  u32 br_opcode;

  if (BPF_OP(code) == 132) {
   if (is_imm)
    emit_btsti(dst, imm, ctx);
   else
    emit_btst(dst, src, ctx);
  } else {
   if (is_imm)
    emit_cmpi(dst, imm, ctx);
   else
    emit_cmp(dst, src, ctx);
  }
  switch (BPF_OP(code)) {
  case 138:
   br_opcode = BE;
   break;
  case 136:
   br_opcode = BGU;
   break;
  case 134:
   br_opcode = BLU;
   break;
  case 137:
   br_opcode = BGEU;
   break;
  case 135:
   br_opcode = BLEU;
   break;
  case 132:
  case 133:
   br_opcode = BNE;
   break;
  case 130:
   br_opcode = BG;
   break;
  case 128:
   br_opcode = BL;
   break;
  case 131:
   br_opcode = BGE;
   break;
  case 129:
   br_opcode = BLE;
   break;
  default:



   return -EFAULT;
  }
  emit_branch(br_opcode, ctx->idx, branch_dst, ctx);
  emit_nop(ctx);
 } else {
  u32 cbcond_opcode;

  switch (BPF_OP(code)) {
  case 138:
   cbcond_opcode = CBCONDE;
   break;
  case 136:
   cbcond_opcode = CBCONDGU;
   break;
  case 134:
   cbcond_opcode = CBCONDLU;
   break;
  case 137:
   cbcond_opcode = CBCONDGEU;
   break;
  case 135:
   cbcond_opcode = CBCONDLEU;
   break;
  case 133:
   cbcond_opcode = CBCONDNE;
   break;
  case 130:
   cbcond_opcode = CBCONDG;
   break;
  case 128:
   cbcond_opcode = CBCONDL;
   break;
  case 131:
   cbcond_opcode = CBCONDGE;
   break;
  case 129:
   cbcond_opcode = CBCONDLE;
   break;
  default:



   return -EFAULT;
  }
  cbcond_opcode |= CBCOND_OP;
  if (is_imm)
   emit_cbcondi(cbcond_opcode, ctx->idx, branch_dst,
         dst, imm, ctx);
  else
   emit_cbcond(cbcond_opcode, ctx->idx, branch_dst,
        dst, src, ctx);
 }
 return 0;
}
