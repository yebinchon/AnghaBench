
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct jit_ctx {int dummy; } ;


 int ARM_LDR_I (int const,int ,int ) ;
 int ARM_MOVT (int const,int) ;
 int ARM_MOVW (int const,int) ;
 int ARM_PC ;
 int emit (int ,struct jit_ctx*) ;
 int imm_offset (int,struct jit_ctx*) ;

__attribute__((used)) static inline void emit_mov_i_no8m(const u8 rd, u32 val, struct jit_ctx *ctx)
{

 emit(ARM_LDR_I(rd, ARM_PC, imm_offset(val, ctx)), ctx);





}
