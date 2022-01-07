
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jit_ctx {int dummy; } ;
typedef int s8 ;


 size_t TMP_REG_1 ;
 int arm_bpf_get_reg32 (int const,int const,struct jit_ctx*) ;
 int arm_bpf_put_reg32 (int const,int ,struct jit_ctx*) ;
 int ** bpf2a32 ;

__attribute__((used)) static inline void emit_a32_mov_r(const s8 dst, const s8 src,
      struct jit_ctx *ctx) {
 const s8 *tmp = bpf2a32[TMP_REG_1];
 s8 rt;

 rt = arm_bpf_get_reg32(src, tmp[0], ctx);
 arm_bpf_put_reg32(dst, rt, ctx);
}
