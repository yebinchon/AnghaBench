
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct jit_ctx {int dummy; } ;


 int ARM_ANDS_R (int ,int const,int const) ;
 int ARM_AND_R (int ,int const,int const) ;
 int ARM_CMP_R (int const,int const) ;
 int ARM_COND_EQ ;
 int ARM_IP ;
 int ARM_LR ;
 int ARM_ORRS_R (int ,int ,int ) ;
 int ARM_SBCS_R (int ,int const,int const) ;
 int _emit (int ,int ,struct jit_ctx*) ;
 int emit (int ,struct jit_ctx*) ;

__attribute__((used)) static inline void emit_ar_r(const u8 rd, const u8 rt, const u8 rm,
        const u8 rn, struct jit_ctx *ctx, u8 op,
        bool is_jmp64) {
 switch (op) {
 case 132:
  if (is_jmp64) {
   emit(ARM_AND_R(ARM_IP, rt, rn), ctx);
   emit(ARM_AND_R(ARM_LR, rd, rm), ctx);
   emit(ARM_ORRS_R(ARM_IP, ARM_LR, ARM_IP), ctx);
  } else {
   emit(ARM_ANDS_R(ARM_IP, rt, rn), ctx);
  }
  break;
 case 138:
 case 133:
 case 136:
 case 137:
 case 135:
 case 134:
  if (is_jmp64) {
   emit(ARM_CMP_R(rd, rm), ctx);

   _emit(ARM_COND_EQ, ARM_CMP_R(rt, rn), ctx);
  } else {
   emit(ARM_CMP_R(rt, rn), ctx);
  }
  break;
 case 129:
 case 130:
  emit(ARM_CMP_R(rn, rt), ctx);
  if (is_jmp64)
   emit(ARM_SBCS_R(ARM_IP, rm, rd), ctx);
  break;
 case 128:
 case 131:
  emit(ARM_CMP_R(rt, rn), ctx);
  if (is_jmp64)
   emit(ARM_SBCS_R(ARM_IP, rd, rm), ctx);
  break;
 }
}
