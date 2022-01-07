
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {int outer; TYPE_1__* hash; int inner; } ;
typedef TYPE_2__ cf_hmac_ctx ;
struct TYPE_5__ {int (* digest ) (int *,int *) ;int hashsz; int (* update ) (int *,int *,int ) ;} ;


 int CF_MAXHASH ;
 int assert (int) ;
 int mem_clean (TYPE_2__*,int) ;
 int stub1 (int *,int *) ;
 int stub2 (int *,int *,int ) ;
 int stub3 (int *,int *) ;

void cf_hmac_finish(cf_hmac_ctx *ctx, uint8_t *out)
{
  assert(ctx && ctx->hash);
  assert(out);

  uint8_t innerh[CF_MAXHASH];
  ctx->hash->digest(&ctx->inner, innerh);

  ctx->hash->update(&ctx->outer, innerh, ctx->hash->hashsz);
  ctx->hash->digest(&ctx->outer, out);

  mem_clean(ctx, sizeof *ctx);
}
