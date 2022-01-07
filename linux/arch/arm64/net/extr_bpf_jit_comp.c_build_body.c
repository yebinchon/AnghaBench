
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jit_ctx {int idx; int * offset; int * image; struct bpf_prog* prog; } ;
struct bpf_prog {int len; struct bpf_insn* insnsi; } ;
struct bpf_insn {int dummy; } ;


 int build_insn (struct bpf_insn const*,struct jit_ctx*,int) ;

__attribute__((used)) static int build_body(struct jit_ctx *ctx, bool extra_pass)
{
 const struct bpf_prog *prog = ctx->prog;
 int i;

 for (i = 0; i < prog->len; i++) {
  const struct bpf_insn *insn = &prog->insnsi[i];
  int ret;

  ret = build_insn(insn, ctx, extra_pass);
  if (ret > 0) {
   i++;
   if (ctx->image == ((void*)0))
    ctx->offset[i] = ctx->idx;
   continue;
  }
  if (ctx->image == ((void*)0))
   ctx->offset[i] = ctx->idx;
  if (ret)
   return ret;
 }

 return 0;
}
