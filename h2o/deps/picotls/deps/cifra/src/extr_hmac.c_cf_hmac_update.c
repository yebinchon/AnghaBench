
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int inner; TYPE_1__* hash; } ;
typedef TYPE_2__ cf_hmac_ctx ;
struct TYPE_4__ {int (* update ) (int *,void const*,size_t) ;} ;


 int assert (int) ;
 int stub1 (int *,void const*,size_t) ;

void cf_hmac_update(cf_hmac_ctx *ctx, const void *data, size_t ndata)
{
  assert(ctx && ctx->hash);

  ctx->hash->update(&ctx->inner, data, ndata);
}
