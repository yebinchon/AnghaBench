
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct jit_ctx {int dummy; } ;


 int ARM_MOV_I (int const,int) ;
 int emit (int ,struct jit_ctx*) ;
 int emit_mov_i_no8m (int const,int ,struct jit_ctx*) ;
 int imm8m (int ) ;

__attribute__((used)) static inline void emit_mov_i(const u8 rd, u32 val, struct jit_ctx *ctx)
{
 int imm12 = imm8m(val);

 if (imm12 >= 0)
  emit(ARM_MOV_I(rd, imm12), ctx);
 else
  emit_mov_i_no8m(rd, val, ctx);
}
