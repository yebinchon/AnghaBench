
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct jit_ctx {int dummy; } ;


 int ARM_BLX_R (int ) ;
 int ARM_LR ;
 int ARM_MOV_R (int ,int ) ;
 int ARM_PC ;
 int emit (int ,struct jit_ctx*) ;
 int emit_bx_r (int ,struct jit_ctx*) ;

__attribute__((used)) static inline void emit_blx_r(u8 tgt_reg, struct jit_ctx *ctx)
{

 emit(ARM_MOV_R(ARM_LR, ARM_PC), ctx);
 emit_bx_r(tgt_reg, ctx);



}
