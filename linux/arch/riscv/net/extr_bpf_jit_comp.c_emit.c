
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rv_jit_context {size_t ninsns; int * insns; } ;



__attribute__((used)) static void emit(const u32 insn, struct rv_jit_context *ctx)
{
 if (ctx->insns)
  ctx->insns[ctx->ninsns] = insn;

 ctx->ninsns++;
}
