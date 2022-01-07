
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct jit_ctx {int dummy; } ;
typedef int s32 ;


 unsigned int IMMED ;
 unsigned int RS1 (int const) ;
 unsigned int S5 (int ) ;
 unsigned int WDISP10 (unsigned int) ;
 int emit (unsigned int,struct jit_ctx*) ;

__attribute__((used)) static void emit_cbcondi(unsigned int cb_opc, unsigned int from_idx, unsigned int to_idx,
    const u8 dst, s32 imm, struct jit_ctx *ctx)
{
 unsigned int off = to_idx - from_idx;

 emit(cb_opc | IMMED | WDISP10(off << 2) | RS1(dst) | S5(imm), ctx);
}
