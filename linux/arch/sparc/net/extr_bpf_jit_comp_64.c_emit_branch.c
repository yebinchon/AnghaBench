
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jit_ctx {int dummy; } ;


 unsigned int WDISP19 (unsigned int) ;
 unsigned int WDISP22 (unsigned int) ;
 unsigned int XCC ;
 int emit (unsigned int,struct jit_ctx*) ;

__attribute__((used)) static void emit_branch(unsigned int br_opc, unsigned int from_idx, unsigned int to_idx,
   struct jit_ctx *ctx)
{
 unsigned int off = to_idx - from_idx;

 if (br_opc & XCC)
  emit(br_opc | WDISP19(off << 2), ctx);
 else
  emit(br_opc | WDISP22(off << 2), ctx);
}
