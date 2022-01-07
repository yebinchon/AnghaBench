
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {int block; int prpctx; TYPE_1__* prp; } ;
typedef TYPE_2__ cf_cbc ;
struct TYPE_4__ {size_t blocksz; int (* encrypt ) (int ,int *,int ) ;} ;


 int CF_MAXBLOCK ;
 int memcpy (int *,int ,size_t) ;
 int stub1 (int ,int *,int ) ;
 int xor_bb (int *,int const*,int ,size_t) ;

void cf_cbc_encrypt(cf_cbc *ctx, const uint8_t *input, uint8_t *output, size_t blocks)
{
  uint8_t buf[CF_MAXBLOCK];
  size_t nblk = ctx->prp->blocksz;

  while (blocks--)
  {
    xor_bb(buf, input, ctx->block, nblk);
    ctx->prp->encrypt(ctx->prpctx, buf, ctx->block);
    memcpy(output, ctx->block, nblk);
    input += nblk;
    output += nblk;
  }
}
