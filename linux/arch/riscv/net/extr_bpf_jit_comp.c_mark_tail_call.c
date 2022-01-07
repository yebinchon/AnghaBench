
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rv_jit_context {int flags; } ;


 int RV_CTX_F_SEEN_TAIL_CALL ;
 int __set_bit (int ,int *) ;

__attribute__((used)) static void mark_tail_call(struct rv_jit_context *ctx)
{
 __set_bit(RV_CTX_F_SEEN_TAIL_CALL, &ctx->flags);
}
