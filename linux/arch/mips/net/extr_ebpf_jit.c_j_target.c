
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jit_ctx {unsigned long* offsets; scalar_t__ target; } ;


 unsigned long OFFSETS_B_CONV ;

__attribute__((used)) static unsigned int j_target(struct jit_ctx *ctx, int target_idx)
{
 unsigned long target_va, base_va;
 unsigned int r;

 if (!ctx->target)
  return 0;

 base_va = (unsigned long)ctx->target;
 target_va = base_va + (ctx->offsets[target_idx] & ~OFFSETS_B_CONV);

 if ((base_va & ~0x0ffffffful) != (target_va & ~0x0ffffffful))
  return (unsigned int)-1;
 r = target_va & 0x0ffffffful;
 return r;
}
