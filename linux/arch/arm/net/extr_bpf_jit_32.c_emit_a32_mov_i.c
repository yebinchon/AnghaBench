
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct jit_ctx {int dummy; } ;
typedef int s8 ;


 size_t TMP_REG_1 ;
 int arm_bpf_put_reg32 (int const,int const,struct jit_ctx*) ;
 int ** bpf2a32 ;
 int emit_mov_i (int const,int const,struct jit_ctx*) ;
 scalar_t__ is_stacked (int const) ;

__attribute__((used)) static inline void emit_a32_mov_i(const s8 dst, const u32 val,
      struct jit_ctx *ctx)
{
 const s8 *tmp = bpf2a32[TMP_REG_1];

 if (is_stacked(dst)) {
  emit_mov_i(tmp[1], val, ctx);
  arm_bpf_put_reg32(dst, tmp[1], ctx);
 } else {
  emit_mov_i(dst, val, ctx);
 }
}
