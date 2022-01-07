
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct codegen_context {int seen; } ;


 int* b2p ;

__attribute__((used)) static inline void bpf_set_seen_register(struct codegen_context *ctx, int i)
{
 ctx->seen |= (1 << (31 - b2p[i]));
}
