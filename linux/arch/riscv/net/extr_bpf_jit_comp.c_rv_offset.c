
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rv_jit_context {int* offset; } ;



__attribute__((used)) static int rv_offset(int bpf_to, int bpf_from, struct rv_jit_context *ctx)
{
 int from = ctx->offset[bpf_from] - 1, to = ctx->offset[bpf_to];

 return (to - from) << 2;
}
