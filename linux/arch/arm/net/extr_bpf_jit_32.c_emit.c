
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct jit_ctx {int dummy; } ;


 int ARM_COND_AL ;
 int _emit (int ,int ,struct jit_ctx*) ;

__attribute__((used)) static inline void emit(u32 inst, struct jit_ctx *ctx)
{
 _emit(ARM_COND_AL, inst, ctx);
}
