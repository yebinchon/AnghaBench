
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jit_ctx {int* offsets; int * target; } ;



__attribute__((used)) static inline int bpf2a32_offset(int bpf_to, int bpf_from,
     const struct jit_ctx *ctx) {
 int to, from;

 if (ctx->target == ((void*)0))
  return 0;
 to = ctx->offsets[bpf_to];
 from = ctx->offsets[bpf_from];

 return to - from - 1;
}
