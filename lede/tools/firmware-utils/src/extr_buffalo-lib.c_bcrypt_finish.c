
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcrypt_ctx {scalar_t__ state; } ;


 int free (scalar_t__) ;

void bcrypt_finish(struct bcrypt_ctx *ctx)
{
 if (ctx->state)
  free(ctx->state);
}
