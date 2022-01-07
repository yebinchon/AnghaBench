
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {TYPE_1__* prp; int nkeymat; int keymat; } ;
typedef TYPE_2__ cf_ctr ;
struct TYPE_5__ {int blocksz; } ;


 int cf_blockwise_xor (int ,int *,int ,int const*,int *,size_t,int ,TYPE_2__*) ;
 int ctr_next_block ;

void cf_ctr_cipher(cf_ctr *ctx, const uint8_t *input, uint8_t *output, size_t bytes)
{
  cf_blockwise_xor(ctx->keymat, &ctx->nkeymat,
                   ctx->prp->blocksz,
                   input, output, bytes,
                   ctr_next_block,
                   ctx);
}
