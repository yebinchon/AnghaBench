
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ used; scalar_t__ buffer; TYPE_1__* prp; } ;
typedef TYPE_2__ cf_cbcmac_stream ;
struct TYPE_5__ {scalar_t__ blocksz; } ;


 int cbcmac_process (TYPE_2__*,scalar_t__) ;
 int memset (scalar_t__,int ,scalar_t__) ;

void cf_cbcmac_stream_finish_block_zero(cf_cbcmac_stream *ctx)
{
  if (ctx->used == 0)
    return;

  memset(ctx->buffer + ctx->used, 0, ctx->prp->blocksz - ctx->used);
  cbcmac_process(ctx, ctx->buffer);
  ctx->used = 0;
}
