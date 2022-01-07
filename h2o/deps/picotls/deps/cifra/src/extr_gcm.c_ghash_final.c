
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {scalar_t__ state; int len_aad; int len_cipher; scalar_t__ buffer_used; int Y; } ;
typedef TYPE_1__ ghash_ctx ;


 scalar_t__ STATE_AAD ;
 scalar_t__ STATE_CIPHER ;
 scalar_t__ STATE_INVALID ;
 int assert (int) ;
 int cf_gf128_tobytes_be (int ,int *) ;
 int ghash_add (TYPE_1__*,int *,int) ;
 int ghash_add_pad (TYPE_1__*) ;
 int write64_be (int,int *) ;

__attribute__((used)) static void ghash_final(ghash_ctx *ctx, uint8_t out[16])
{
  uint8_t lenbuf[8];

  if (ctx->state == STATE_AAD || ctx->state == STATE_CIPHER)
  {
    ghash_add_pad(ctx);
    ctx->state = STATE_INVALID;
  }


  write64_be(ctx->len_aad * 8, lenbuf);
  ghash_add(ctx, lenbuf, sizeof lenbuf);

  write64_be(ctx->len_cipher * 8, lenbuf);
  ghash_add(ctx, lenbuf, sizeof lenbuf);

  assert(ctx->buffer_used == 0);
  cf_gf128_tobytes_be(ctx->Y, out);
}
