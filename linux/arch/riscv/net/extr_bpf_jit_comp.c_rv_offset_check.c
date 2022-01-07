
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rv_jit_context {int dummy; } ;
typedef scalar_t__ s16 ;


 int is_13b_check (int,int) ;
 int rv_offset (scalar_t__,int,struct rv_jit_context*) ;

__attribute__((used)) static int rv_offset_check(int *rvoff, s16 off, int insn,
      struct rv_jit_context *ctx)
{
 *rvoff = rv_offset(insn + off, insn, ctx);
 return is_13b_check(*rvoff, insn);
}
