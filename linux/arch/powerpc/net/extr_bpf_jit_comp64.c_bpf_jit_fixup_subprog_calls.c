
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct codegen_context {int idx; } ;
struct bpf_prog {int len; struct bpf_insn* insnsi; } ;
struct bpf_insn {int code; scalar_t__ src_reg; } ;


 int BPF_CALL ;
 int BPF_JMP ;
 scalar_t__ BPF_PSEUDO_CALL ;
 int bpf_jit_emit_func_call_rel (int*,struct codegen_context*,int ) ;
 int bpf_jit_get_func_addr (struct bpf_prog*,struct bpf_insn const*,int,int *,int*) ;

__attribute__((used)) static int bpf_jit_fixup_subprog_calls(struct bpf_prog *fp, u32 *image,
           struct codegen_context *ctx, u32 *addrs)
{
 const struct bpf_insn *insn = fp->insnsi;
 bool func_addr_fixed;
 u64 func_addr;
 u32 tmp_idx;
 int i, ret;

 for (i = 0; i < fp->len; i++) {
  if (insn[i].code == (BPF_JMP | BPF_CALL) &&
      insn[i].src_reg == BPF_PSEUDO_CALL) {
   ret = bpf_jit_get_func_addr(fp, &insn[i], 1,
          &func_addr,
          &func_addr_fixed);
   if (ret < 0)
    return ret;







   tmp_idx = ctx->idx;
   ctx->idx = addrs[i] / 4;
   bpf_jit_emit_func_call_rel(image, ctx, func_addr);





   ctx->idx = tmp_idx;
  }
 }

 return 0;
}
