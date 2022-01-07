
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct codegen_context {int dummy; } ;


 int PPC_BLRL () ;
 int PPC_BPF_LL (int,int,int) ;
 int PPC_FUNC_ADDR (int,int ) ;
 int PPC_LI64 (int,int ) ;
 int PPC_MTLR (int) ;
 size_t TMP_REG_1 ;
 size_t TMP_REG_2 ;
 int* b2p ;

__attribute__((used)) static void bpf_jit_emit_func_call_hlp(u32 *image, struct codegen_context *ctx,
           u64 func)
{
 PPC_FUNC_ADDR(12, func);
 PPC_MTLR(12);

 PPC_BLRL();
}
