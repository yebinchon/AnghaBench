
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int cf_prp ;
struct TYPE_4__ {int cmac; } ;
typedef TYPE_1__ cf_cmac_stream ;


 int cf_cmac_init (int *,int const*,void*) ;
 int cf_cmac_stream_reset (TYPE_1__*) ;

void cf_cmac_stream_init(cf_cmac_stream *ctx, const cf_prp *prp, void *prpctx)
{
  cf_cmac_init(&ctx->cmac, prp, prpctx);
  cf_cmac_stream_reset(ctx);
}
