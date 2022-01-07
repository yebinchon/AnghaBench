
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int nblock; int block; } ;
typedef TYPE_1__ cf_chacha20_ctx ;


 int cf_blockwise_xor (int ,int *,int,int const*,int *,size_t,int ,TYPE_1__*) ;
 int cf_chacha20_next_block ;

void cf_chacha20_cipher(cf_chacha20_ctx *ctx, const uint8_t *input, uint8_t *output, size_t bytes)
{
  cf_blockwise_xor(ctx->block, &ctx->nblock, 64,
                   input, output, bytes,
                   cf_chacha20_next_block,
                   ctx);
}
