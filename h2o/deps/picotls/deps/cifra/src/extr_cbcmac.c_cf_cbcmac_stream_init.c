
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int cf_prp ;
struct TYPE_5__ {void* prpctx; int const* prp; } ;
typedef TYPE_1__ cf_cbcmac_stream ;


 int cf_cbcmac_stream_reset (TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;

void cf_cbcmac_stream_init(cf_cbcmac_stream *ctx, const cf_prp *prp, void *prpctx)
{
  memset(ctx, 0, sizeof *ctx);
  ctx->prp = prp;
  ctx->prpctx = prpctx;
  cf_cbcmac_stream_reset(ctx);
}
