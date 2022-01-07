
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jit_ctx {int* reg_val_types; int* offsets; int idx; int * target; struct bpf_prog* skf; } ;
struct bpf_prog {int len; struct bpf_insn* insnsi; } ;
struct bpf_insn {int code; } ;


 int BPF_EXIT ;
 int BPF_JMP ;
 int OFFSETS_B_CONV ;
 int RVT_VISITED_MASK ;
 int build_one_insn (struct bpf_insn const*,struct jit_ctx*,int,int) ;

__attribute__((used)) static int build_int_body(struct jit_ctx *ctx)
{
 const struct bpf_prog *prog = ctx->skf;
 const struct bpf_insn *insn;
 int i, r;

 for (i = 0; i < prog->len; ) {
  insn = prog->insnsi + i;
  if ((ctx->reg_val_types[i] & RVT_VISITED_MASK) == 0) {

   i++;
   continue;
  }

  if (ctx->target == ((void*)0))
   ctx->offsets[i] = (ctx->offsets[i] & OFFSETS_B_CONV) | (ctx->idx * 4);

  r = build_one_insn(insn, ctx, i, prog->len);
  if (r < 0)
   return r;
  i += r;
 }

 if (ctx->target == ((void*)0))
  ctx->offsets[i] = ctx->idx * 4;






 if (ctx->target == ((void*)0))
  for (i = 0; i < prog->len; i++) {
   insn = prog->insnsi + i;
   if (insn->code == (BPF_JMP | BPF_EXIT))
    ctx->offsets[i] = ctx->idx * 4;
  }
 return 0;
}
