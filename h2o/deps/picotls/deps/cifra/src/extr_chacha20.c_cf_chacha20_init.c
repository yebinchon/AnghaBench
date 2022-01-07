
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int ncounter; scalar_t__ nblock; scalar_t__ nonce; } ;
typedef TYPE_1__ cf_chacha20_ctx ;


 int memcpy (scalar_t__,int const*,int) ;
 int memset (scalar_t__,int ,int) ;
 int set_key (TYPE_1__*,int const*,size_t) ;

void cf_chacha20_init(cf_chacha20_ctx *ctx, const uint8_t *key, size_t nkey, const uint8_t nonce[8])
{
  set_key(ctx, key, nkey);
  memset(ctx->nonce, 0, sizeof ctx->nonce);
  memcpy(ctx->nonce + 8, nonce, 8);
  ctx->nblock = 0;
  ctx->ncounter = 8;
}
