
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct jit_ctx {int dummy; } ;
typedef int s8 ;


 size_t TMP_REG_1 ;
 int arm_bpf_get_reg32 (int const,int const,struct jit_ctx*) ;
 int arm_bpf_put_reg32 (int const,int ,struct jit_ctx*) ;
 int ** bpf2a32 ;
 int emit_alu_r (int ,int ,int const,int const,int const,struct jit_ctx*) ;

__attribute__((used)) static inline void emit_a32_alu_r(const s8 dst, const s8 src,
      struct jit_ctx *ctx, const bool is64,
      const bool hi, const u8 op) {
 const s8 *tmp = bpf2a32[TMP_REG_1];
 s8 rn, rd;

 rn = arm_bpf_get_reg32(src, tmp[1], ctx);
 rd = arm_bpf_get_reg32(dst, tmp[0], ctx);

 emit_alu_r(rd, rn, is64, hi, op, ctx);
 arm_bpf_put_reg32(dst, rd, ctx);
}
