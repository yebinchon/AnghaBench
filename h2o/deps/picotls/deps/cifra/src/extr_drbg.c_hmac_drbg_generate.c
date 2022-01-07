
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_11__ {TYPE_1__* hash; } ;
struct TYPE_10__ {int reseed_counter; int V; TYPE_3__ hmac; } ;
typedef TYPE_2__ cf_hmac_drbg ;
typedef TYPE_3__ cf_hmac_ctx ;
struct TYPE_9__ {int hashsz; } ;


 size_t MIN (int ,size_t) ;
 int assert (int) ;
 int cf_hmac_drbg_needs_reseed (TYPE_2__*) ;
 int cf_hmac_finish (TYPE_3__*,int ) ;
 int cf_hmac_update (TYPE_3__*,int ,int ) ;
 int hmac_drbg_update (TYPE_2__*,void const*,size_t,int *,int ,int *,int ) ;
 int memcpy (int *,int ,size_t) ;

__attribute__((used)) static void hmac_drbg_generate(cf_hmac_drbg *ctx,
                               const void *addnl, size_t naddnl,
                               void *out, size_t nout)
{


  assert(!cf_hmac_drbg_needs_reseed(ctx));




  if (naddnl)
    hmac_drbg_update(ctx, addnl, naddnl, ((void*)0), 0, ((void*)0), 0);
  uint8_t *bout = out;
  cf_hmac_ctx local;

  while (nout)
  {
    local = ctx->hmac;
    cf_hmac_update(&local, ctx->V, ctx->hmac.hash->hashsz);
    cf_hmac_finish(&local, ctx->V);

    size_t take = MIN(ctx->hmac.hash->hashsz, nout);
    memcpy(bout, ctx->V, take);
    bout += take;
    nout -= take;
  }


  hmac_drbg_update(ctx, addnl, naddnl, ((void*)0), 0, ((void*)0), 0);


  ctx->reseed_counter++;
}
