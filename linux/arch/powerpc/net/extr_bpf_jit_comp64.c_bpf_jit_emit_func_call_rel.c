
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct codegen_context {unsigned int idx; } ;


 int PPC_BLRL () ;
 int PPC_BPF_LL (int,int,int) ;
 int PPC_LI64 (int,int ) ;
 int PPC_MTLR (int) ;
 int PPC_NOP () ;

__attribute__((used)) static void bpf_jit_emit_func_call_rel(u32 *image, struct codegen_context *ctx,
           u64 func)
{
 unsigned int i, ctx_idx = ctx->idx;


 PPC_LI64(12, func);
 for (i = ctx->idx - ctx_idx; i < 5; i++)
  PPC_NOP();
 PPC_MTLR(12);
 PPC_BLRL();
}
