
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rv_jit_context {int flags; } ;


 int RV_CTX_F_SEEN_CALL ;
 int test_bit (int ,int *) ;

__attribute__((used)) static bool seen_call(struct rv_jit_context *ctx)
{
 return test_bit(RV_CTX_F_SEEN_CALL, &ctx->flags);
}
