
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ buffer_used; scalar_t__ buffer; } ;
typedef TYPE_1__ ghash_ctx ;


 int ghash_block (TYPE_1__*,scalar_t__) ;
 int memset (scalar_t__,int ,scalar_t__) ;

__attribute__((used)) static void ghash_add_pad(ghash_ctx *ctx)
{
  if (ctx->buffer_used == 0)
    return;

  memset(ctx->buffer + ctx->buffer_used, 0, sizeof(ctx->buffer) - ctx->buffer_used);
  ghash_block(ctx, ctx->buffer);
  ctx->buffer_used = 0;
}
