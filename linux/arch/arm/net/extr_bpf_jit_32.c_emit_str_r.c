
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct jit_ctx {int dummy; } ;
typedef int s8 ;
typedef int s32 ;


 int ARM_ADD_R (int const,int const,int ) ;
 int ARM_STRB_I (int ,int ,int) ;
 int ARM_STRH_I (int ,int ,int) ;
 int ARM_STR_I (int ,int ,int) ;




 size_t TMP_REG_1 ;
 int arm_bpf_get_reg32 (int const,int const,struct jit_ctx*) ;
 int ** bpf2a32 ;
 int emit (int ,struct jit_ctx*) ;
 int emit_a32_mov_i (int const,int,struct jit_ctx*) ;
 int src_hi ;
 int src_lo ;

__attribute__((used)) static inline void emit_str_r(const s8 dst, const s8 src[],
         s32 off, struct jit_ctx *ctx, const u8 sz){
 const s8 *tmp = bpf2a32[TMP_REG_1];
 s32 off_max;
 s8 rd;

 rd = arm_bpf_get_reg32(dst, tmp[1], ctx);

 if (sz == 129)
  off_max = 0xff;
 else
  off_max = 0xfff;

 if (off < 0 || off > off_max) {
  emit_a32_mov_i(tmp[0], off, ctx);
  emit(ARM_ADD_R(tmp[0], tmp[0], rd), ctx);
  rd = tmp[0];
  off = 0;
 }
 switch (sz) {
 case 131:

  emit(ARM_STRB_I(src_lo, rd, off), ctx);
  break;
 case 129:

  emit(ARM_STRH_I(src_lo, rd, off), ctx);
  break;
 case 128:

  emit(ARM_STR_I(src_lo, rd, off), ctx);
  break;
 case 130:

  emit(ARM_STR_I(src_lo, rd, off), ctx);
  emit(ARM_STR_I(src_hi, rd, off + 4), ctx);
  break;
 }
}
