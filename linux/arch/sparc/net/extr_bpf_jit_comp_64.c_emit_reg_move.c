
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct jit_ctx {int dummy; } ;


 int G0 ;
 int OR ;
 int RD (int ) ;
 int RS1 (int ) ;
 int RS2 (int ) ;
 int emit (int,struct jit_ctx*) ;

__attribute__((used)) static void emit_reg_move(u32 from, u32 to, struct jit_ctx *ctx)
{
 emit(OR | RS1(G0) | RS2(from) | RD(to), ctx);
}
