
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct jit_ctx {int dummy; } ;
typedef int s8 ;


 int ARM_MOV_R (int const,int const) ;
 int ARM_MOV_SI (int const,int const,int ,int const) ;
 int ARM_ORR_SI (int const,int const,int const,int ,int) ;
 int SRTYPE_ASL ;
 int SRTYPE_ASR ;
 int SRTYPE_LSR ;
 size_t TMP_REG_1 ;
 size_t TMP_REG_2 ;
 int * arm_bpf_get_reg64 (int const*,int const*,struct jit_ctx*) ;
 int arm_bpf_put_reg64 (int const*,int const*,struct jit_ctx*) ;
 int ** bpf2a32 ;
 int emit (int ,struct jit_ctx*) ;

__attribute__((used)) static inline void emit_a32_arsh_i64(const s8 dst[],
         const u32 val, struct jit_ctx *ctx){
 const s8 *tmp = bpf2a32[TMP_REG_1];
 const s8 *tmp2 = bpf2a32[TMP_REG_2];
 const s8 *rd;


 rd = arm_bpf_get_reg64(dst, tmp, ctx);


 if (val < 32) {
  emit(ARM_MOV_SI(tmp2[1], rd[1], SRTYPE_LSR, val), ctx);
  emit(ARM_ORR_SI(rd[1], tmp2[1], rd[0], SRTYPE_ASL, 32 - val), ctx);
  emit(ARM_MOV_SI(rd[0], rd[0], SRTYPE_ASR, val), ctx);
 } else if (val == 32) {
  emit(ARM_MOV_R(rd[1], rd[0]), ctx);
  emit(ARM_MOV_SI(rd[0], rd[0], SRTYPE_ASR, 31), ctx);
 } else {
  emit(ARM_MOV_SI(rd[1], rd[0], SRTYPE_ASR, val - 32), ctx);
  emit(ARM_MOV_SI(rd[0], rd[0], SRTYPE_ASR, 31), ctx);
 }

 arm_bpf_put_reg64(dst, rd, ctx);
}
