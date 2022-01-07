
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jit_ctx {int* offset; } ;



__attribute__((used)) static inline int bpf2a64_offset(int bpf_to, int bpf_from,
     const struct jit_ctx *ctx)
{
 int to = ctx->offset[bpf_to];

 int from = ctx->offset[bpf_from] - 1;

 return to - from;
}
