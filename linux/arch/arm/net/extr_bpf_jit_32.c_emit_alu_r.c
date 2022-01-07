
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct jit_ctx {int dummy; } ;


 int ARM_AND_R (int const,int const,int const) ;
 int ARM_EOR_R (int const,int const,int const) ;
 int ARM_LSL_R (int const,int const,int const) ;
 int ARM_LSR_R (int const,int const,int const) ;
 int ARM_MOV_SR (int const,int const,int ,int const) ;
 int ARM_MUL (int const,int const,int const) ;
 int ARM_ORR_R (int const,int const,int const) ;





 int BPF_OP (int const) ;




 int SRTYPE_ASR ;
 int emit (int ,struct jit_ctx*) ;
 int emit_a32_add_r (int const,int const,int const,int const,struct jit_ctx*) ;
 int emit_a32_sub_r (int const,int const,int const,int const,struct jit_ctx*) ;

__attribute__((used)) static inline void emit_alu_r(const u8 dst, const u8 src, const bool is64,
         const bool hi, const u8 op, struct jit_ctx *ctx){
 switch (BPF_OP(op)) {

 case 136:
  emit_a32_add_r(dst, src, is64, hi, ctx);
  break;

 case 129:
  emit_a32_sub_r(dst, src, is64, hi, ctx);
  break;

 case 131:
  emit(ARM_ORR_R(dst, dst, src), ctx);
  break;

 case 135:
  emit(ARM_AND_R(dst, dst, src), ctx);
  break;

 case 128:
  emit(ARM_EOR_R(dst, dst, src), ctx);
  break;

 case 132:
  emit(ARM_MUL(dst, dst, src), ctx);
  break;

 case 133:
  emit(ARM_LSL_R(dst, dst, src), ctx);
  break;

 case 130:
  emit(ARM_LSR_R(dst, dst, src), ctx);
  break;

 case 134:
  emit(ARM_MOV_SR(dst, dst, SRTYPE_ASR, src), ctx);
  break;
 }
}
