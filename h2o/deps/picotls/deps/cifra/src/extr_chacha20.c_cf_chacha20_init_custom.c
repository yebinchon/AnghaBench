
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {size_t ncounter; scalar_t__ nblock; int nonce; } ;
typedef TYPE_1__ cf_chacha20_ctx ;


 int assert (int) ;
 int memcpy (int ,int const*,int) ;
 int set_key (TYPE_1__*,int const*,size_t) ;

void cf_chacha20_init_custom(cf_chacha20_ctx *ctx, const uint8_t *key, size_t nkey,
                             const uint8_t nonce[16], size_t ncounter)
{
  assert(ncounter > 0);
  set_key(ctx, key, nkey);
  memcpy(ctx->nonce, nonce, sizeof ctx->nonce);
  ctx->nblock = 0;
  ctx->ncounter = ncounter;
}
