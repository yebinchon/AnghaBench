
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jit_ctx {int flags; } ;
struct bpf_insn {int src_reg; int dst_reg; } ;
typedef enum which_ebpf_reg { ____Placeholder_which_ebpf_reg } which_ebpf_reg ;
 int EBPF_SAVE_S0 ;
 int EBPF_SAVE_S1 ;
 int EBPF_SAVE_S2 ;
 int EBPF_SAVE_S3 ;
 int EBPF_SEEN_FP ;
 int EINVAL ;
 int MIPS_R_A0 ;
 int MIPS_R_A1 ;
 int MIPS_R_A2 ;
 int MIPS_R_A3 ;
 int MIPS_R_A4 ;
 int MIPS_R_S0 ;
 int MIPS_R_S1 ;
 int MIPS_R_S2 ;
 int MIPS_R_S3 ;
 int MIPS_R_T4 ;
 int MIPS_R_V0 ;
 int MIPS_R_ZERO ;
 int WARN (int,char*,int) ;
 int dst_reg ;
 int src_reg ;
 int src_reg_no_fp ;

__attribute__((used)) static int ebpf_to_mips_reg(struct jit_ctx *ctx,
       const struct bpf_insn *insn,
       enum which_ebpf_reg w)
{
 int ebpf_reg = (w == src_reg || w == src_reg_no_fp) ?
  insn->src_reg : insn->dst_reg;

 switch (ebpf_reg) {
 case 139:
  return MIPS_R_V0;
 case 138:
  return MIPS_R_A0;
 case 136:
  return MIPS_R_A1;
 case 135:
  return MIPS_R_A2;
 case 134:
  return MIPS_R_A3;
 case 133:
  return MIPS_R_A4;
 case 132:
  ctx->flags |= EBPF_SAVE_S0;
  return MIPS_R_S0;
 case 131:
  ctx->flags |= EBPF_SAVE_S1;
  return MIPS_R_S1;
 case 130:
  ctx->flags |= EBPF_SAVE_S2;
  return MIPS_R_S2;
 case 129:
  ctx->flags |= EBPF_SAVE_S3;
  return MIPS_R_S3;
 case 137:
  if (w == dst_reg || w == src_reg_no_fp)
   goto bad_reg;
  ctx->flags |= EBPF_SEEN_FP;




  return MIPS_R_ZERO;
 case 128:
  return MIPS_R_T4;
 default:
bad_reg:
  WARN(1, "Illegal bpf reg: %d\n", ebpf_reg);
  return -EINVAL;
 }
}
