
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {scalar_t__ state; size_t len_cipher; } ;
typedef TYPE_1__ ghash_ctx ;


 scalar_t__ STATE_AAD ;
 scalar_t__ STATE_CIPHER ;
 int assert (int) ;
 int ghash_add (TYPE_1__*,int const*,size_t) ;
 int ghash_add_pad (TYPE_1__*) ;

__attribute__((used)) static void ghash_add_cipher(ghash_ctx *ctx, const uint8_t *buf, size_t n)
{
  if (ctx->state == STATE_AAD)
  {
    ghash_add_pad(ctx);
    ctx->state = STATE_CIPHER;
  }

  assert(ctx->state == STATE_CIPHER);
  ctx->len_cipher += n;
  ghash_add(ctx, buf, n);
}
