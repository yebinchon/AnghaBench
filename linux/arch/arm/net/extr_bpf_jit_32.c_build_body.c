
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jit_ctx {int idx; int * offsets; int * target; struct bpf_prog* prog; } ;
struct bpf_prog {unsigned int len; struct bpf_insn* insnsi; } ;
struct bpf_insn {int dummy; } ;


 int build_insn (struct bpf_insn const*,struct jit_ctx*) ;

__attribute__((used)) static int build_body(struct jit_ctx *ctx)
{
 const struct bpf_prog *prog = ctx->prog;
 unsigned int i;

 for (i = 0; i < prog->len; i++) {
  const struct bpf_insn *insn = &(prog->insnsi[i]);
  int ret;

  ret = build_insn(insn, ctx);


  if (ret > 0) {
   i++;
   if (ctx->target == ((void*)0))
    ctx->offsets[i] = ctx->idx;
   continue;
  }

  if (ctx->target == ((void*)0))
   ctx->offsets[i] = ctx->idx;


  if (ret)
   return ret;
 }
 return 0;
}
