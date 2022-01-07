
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct jit_ctx {int idx; int * image; } ;


 scalar_t__ AARCH64_BREAK_FAULT ;
 scalar_t__ le32_to_cpu (int ) ;

__attribute__((used)) static int validate_code(struct jit_ctx *ctx)
{
 int i;

 for (i = 0; i < ctx->idx; i++) {
  u32 a64_insn = le32_to_cpu(ctx->image[i]);

  if (a64_insn == AARCH64_BREAK_FAULT)
   return -1;
 }

 return 0;
}
