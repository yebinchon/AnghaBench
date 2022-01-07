
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct jit_ctx {int dummy; } ;


 int ARM_FP ;
 int ARM_LDM (int,int) ;
 int ARM_MOV_R (int,int ) ;
 int ARM_POP (int) ;
 int ARM_SP ;
 int ARM_SUB_I (int,int ,int) ;
 int CALLEE_POP_MASK ;
 int emit (int ,struct jit_ctx*) ;
 int hweight16 (int) ;

__attribute__((used)) static void build_epilogue(struct jit_ctx *ctx)
{
 emit(ARM_MOV_R(ARM_SP, ARM_FP), ctx);
 emit(ARM_POP(CALLEE_POP_MASK), ctx);

}
