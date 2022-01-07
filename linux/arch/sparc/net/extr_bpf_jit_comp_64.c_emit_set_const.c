
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct jit_ctx {int dummy; } ;
typedef int s32 ;


 int OR_LO (int ,int ) ;
 int SETHI (int ,int ) ;
 int emit (int ,struct jit_ctx*) ;

__attribute__((used)) static void emit_set_const(s32 K, u32 reg, struct jit_ctx *ctx)
{
 emit(SETHI(K, reg), ctx);
 emit(OR_LO(K, reg), ctx);
}
