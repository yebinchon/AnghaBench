
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct jit_ctx {int* reg_val_types; struct bpf_prog* skf; } ;
struct bpf_prog {int len; struct bpf_insn* insnsi; } ;
struct bpf_insn {int dst_reg; int imm; int off; int code; } ;
typedef int s64 ;
 int BPF_CLASS (int ) ;





 int BPF_IMM ;
 int BPF_MODE (int ) ;



 int BPF_OP (int ) ;

 int BPF_REG_0 ;
 int BPF_REG_5 ;

 int BPF_SIZE (int ) ;
 int BPF_SRC (int ) ;



 int REG_32BIT ;
 int REG_32BIT_POS ;
 int REG_64BIT ;
 int REG_64BIT_32BIT ;
 int RVT_BRANCH_TAKEN ;
 int RVT_DONE ;
 int RVT_FALL_THROUGH ;
 int RVT_VISITED_MASK ;
 int S32_MAX ;
 int S32_MIN ;
 int WARN (int,char*) ;
 int set_reg_val_type (int*,int,int ) ;

__attribute__((used)) static int reg_val_propagate_range(struct jit_ctx *ctx, u64 initial_rvt,
       int start_idx, bool follow_taken)
{
 const struct bpf_prog *prog = ctx->skf;
 const struct bpf_insn *insn;
 u64 exit_rvt = initial_rvt;
 u64 *rvt = ctx->reg_val_types;
 int idx;
 int reg;

 for (idx = start_idx; idx < prog->len; idx++) {
  rvt[idx] = (rvt[idx] & RVT_VISITED_MASK) | exit_rvt;
  insn = prog->insnsi + idx;
  switch (BPF_CLASS(insn->code)) {
  case 162:
   switch (BPF_OP(insn->code)) {
   case 163:
   case 130:
   case 134:
   case 157:
   case 132:
   case 160:
   case 137:
   case 131:
   case 133:
   case 136:
   case 128:
    set_reg_val_type(&exit_rvt, insn->dst_reg, REG_32BIT);
    break;
   case 135:
    if (BPF_SRC(insn->code)) {
     set_reg_val_type(&exit_rvt, insn->dst_reg, REG_32BIT);
    } else {

     if (insn->imm >= 0)
      set_reg_val_type(&exit_rvt, insn->dst_reg, REG_32BIT_POS);
     else
      set_reg_val_type(&exit_rvt, insn->dst_reg, REG_32BIT);
    }
    break;
   case 155:
    if (insn->imm == 64)
     set_reg_val_type(&exit_rvt, insn->dst_reg, REG_64BIT);
    else if (insn->imm == 32)
     set_reg_val_type(&exit_rvt, insn->dst_reg, REG_32BIT);
    else
     set_reg_val_type(&exit_rvt, insn->dst_reg, REG_32BIT_POS);
    break;
   }
   rvt[idx] |= RVT_DONE;
   break;
  case 161:
   switch (BPF_OP(insn->code)) {
   case 135:
    if (BPF_SRC(insn->code)) {

     set_reg_val_type(&exit_rvt, insn->dst_reg, REG_64BIT);
    } else {

     if (insn->imm >= 0)
      set_reg_val_type(&exit_rvt, insn->dst_reg, REG_32BIT_POS);
     else
      set_reg_val_type(&exit_rvt, insn->dst_reg, REG_64BIT_32BIT);
    }
    break;
   default:
    set_reg_val_type(&exit_rvt, insn->dst_reg, REG_64BIT);
   }
   rvt[idx] |= RVT_DONE;
   break;
  case 139:
   switch (BPF_SIZE(insn->code)) {
   case 156:
    if (BPF_MODE(insn->code) == BPF_IMM) {
     s64 val;

     val = (s64)((u32)insn->imm | ((u64)(insn + 1)->imm << 32));
     if (val > 0 && val <= S32_MAX)
      set_reg_val_type(&exit_rvt, insn->dst_reg, REG_32BIT_POS);
     else if (val >= S32_MIN && val <= S32_MAX)
      set_reg_val_type(&exit_rvt, insn->dst_reg, REG_64BIT_32BIT);
     else
      set_reg_val_type(&exit_rvt, insn->dst_reg, REG_64BIT);
     rvt[idx] |= RVT_DONE;
     idx++;
    } else {
     set_reg_val_type(&exit_rvt, insn->dst_reg, REG_64BIT);
    }
    break;
   case 159:
   case 153:
    set_reg_val_type(&exit_rvt, insn->dst_reg, REG_32BIT_POS);
    break;
   case 129:
    if (BPF_MODE(insn->code) == BPF_IMM)
     set_reg_val_type(&exit_rvt, insn->dst_reg,
        insn->imm >= 0 ? REG_32BIT_POS : REG_32BIT);
    else
     set_reg_val_type(&exit_rvt, insn->dst_reg, REG_32BIT);
    break;
   }
   rvt[idx] |= RVT_DONE;
   break;
  case 138:
   switch (BPF_SIZE(insn->code)) {
   case 156:
    set_reg_val_type(&exit_rvt, insn->dst_reg, REG_64BIT);
    break;
   case 159:
   case 153:
    set_reg_val_type(&exit_rvt, insn->dst_reg, REG_32BIT_POS);
    break;
   case 129:
    set_reg_val_type(&exit_rvt, insn->dst_reg, REG_32BIT);
    break;
   }
   rvt[idx] |= RVT_DONE;
   break;
  case 146:
   switch (BPF_OP(insn->code)) {
   case 154:
    rvt[idx] = RVT_DONE | exit_rvt;
    rvt[prog->len] = exit_rvt;
    return idx;
   case 152:
    rvt[idx] |= RVT_DONE;
    idx += insn->off;
    break;
   case 151:
   case 149:
   case 150:
   case 147:
   case 148:
   case 144:
   case 145:
   case 142:
   case 143:
   case 140:
   case 141:
    if (follow_taken) {
     rvt[idx] |= RVT_BRANCH_TAKEN;
     idx += insn->off;
     follow_taken = 0;
    } else {
     rvt[idx] |= RVT_FALL_THROUGH;
    }
    break;
   case 158:
    set_reg_val_type(&exit_rvt, BPF_REG_0, REG_64BIT);

    for (reg = BPF_REG_0; reg <= BPF_REG_5; reg++)
     set_reg_val_type(&exit_rvt, reg, REG_64BIT);

    rvt[idx] |= RVT_DONE;
    break;
   default:
    WARN(1, "Unhandled BPF_JMP case.\n");
    rvt[idx] |= RVT_DONE;
    break;
   }
   break;
  default:
   rvt[idx] |= RVT_DONE;
   break;
  }
 }
 return idx;
}
