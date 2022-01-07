
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct jit_ctx {int* target; size_t idx; } ;


 int __opcode_to_mem_arm (int) ;

__attribute__((used)) static inline void _emit(int cond, u32 inst, struct jit_ctx *ctx)
{
 inst |= (cond << 28);
 inst = __opcode_to_mem_arm(inst);

 if (ctx->target != ((void*)0))
  ctx->target[ctx->idx] = inst;

 ctx->idx++;
}
