
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct codegen_context {int dummy; } ;


 size_t BPF_REG_0 ;
 int PPC_BLR () ;
 int PPC_MR (int,int ) ;
 int * b2p ;
 int bpf_jit_emit_common_epilogue (int *,struct codegen_context*) ;

__attribute__((used)) static void bpf_jit_build_epilogue(u32 *image, struct codegen_context *ctx)
{
 bpf_jit_emit_common_epilogue(image, ctx);


 PPC_MR(3, b2p[BPF_REG_0]);

 PPC_BLR();
}
