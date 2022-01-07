
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rv_jit_context {int flags; } ;


 int RV_CTX_F_SEEN_S6 ;
 int RV_REG_A6 ;
 int RV_REG_S6 ;
 int __set_bit (int ,int *) ;
 int mark_tail_call (struct rv_jit_context*) ;
 scalar_t__ seen_call (struct rv_jit_context*) ;

__attribute__((used)) static u8 rv_tail_call_reg(struct rv_jit_context *ctx)
{
 mark_tail_call(ctx);

 if (seen_call(ctx)) {
  __set_bit(RV_CTX_F_SEEN_S6, &ctx->flags);
  return RV_REG_S6;
 }
 return RV_REG_A6;
}
