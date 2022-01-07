
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {TYPE_1__* prp; int used; int buffer; } ;
typedef TYPE_2__ cf_cbcmac_stream ;
struct TYPE_5__ {int blocksz; } ;


 int cbcmac_process ;
 int cf_blockwise_accumulate (int ,int *,int ,int const*,size_t,int ,TYPE_2__*) ;

void cf_cbcmac_stream_update(cf_cbcmac_stream *ctx, const uint8_t *data, size_t len)
{
  cf_blockwise_accumulate(ctx->buffer, &ctx->used, ctx->prp->blocksz,
                          data, len,
                          cbcmac_process,
                          ctx);
}
