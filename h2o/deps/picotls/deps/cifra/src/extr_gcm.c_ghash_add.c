
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int buffer_used; int buffer; } ;
typedef TYPE_1__ ghash_ctx ;


 int cf_blockwise_accumulate (int ,int *,int,int const*,size_t,int ,TYPE_1__*) ;
 int ghash_block ;

__attribute__((used)) static void ghash_add(ghash_ctx *ctx, const uint8_t *buf, size_t n)
{
  cf_blockwise_accumulate(ctx->buffer, &ctx->buffer_used,
                          sizeof ctx->buffer,
                          buf, n,
                          ghash_block,
                          ctx);
}
