
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int reseed_counter; } ;
typedef TYPE_1__ cf_hmac_drbg ;


 int hmac_drbg_update (TYPE_1__*,void const*,size_t,void const*,size_t,int *,int ) ;

void cf_hmac_drbg_reseed(cf_hmac_drbg *ctx,
                         const void *entropy, size_t nentropy,
                         const void *addnl, size_t naddnl)
{


  hmac_drbg_update(ctx, entropy, nentropy, addnl, naddnl, ((void*)0), 0);


  ctx->reseed_counter = 1;
}
