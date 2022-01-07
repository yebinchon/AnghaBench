
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct jit_ctx {int dummy; } ;
typedef int s8 ;


 size_t TMP_REG_1 ;
 int arm_bpf_put_reg64 (int const*,int const*,struct jit_ctx*) ;
 int ** bpf2a32 ;
 int dst_lo ;
 int emit_mov_i (int const,int,struct jit_ctx*) ;
 scalar_t__ is_stacked (int ) ;

__attribute__((used)) static void emit_a32_mov_i64(const s8 dst[], u64 val, struct jit_ctx *ctx)
{
 const s8 *tmp = bpf2a32[TMP_REG_1];
 const s8 *rd = is_stacked(dst_lo) ? tmp : dst;

 emit_mov_i(rd[1], (u32)val, ctx);
 emit_mov_i(rd[0], val >> 32, ctx);

 arm_bpf_put_reg64(dst, rd, ctx);
}
