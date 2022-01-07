
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jit_ctx {int idx; scalar_t__* target; } ;


 int ARM_INST_UDF ;
 scalar_t__ __opcode_to_mem_arm (int ) ;

__attribute__((used)) static int validate_code(struct jit_ctx *ctx)
{
 int i;

 for (i = 0; i < ctx->idx; i++) {
  if (ctx->target[i] == __opcode_to_mem_arm(ARM_INST_UDF))
   return -1;
 }

 return 0;
}
