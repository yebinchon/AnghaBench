
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {scalar_t__ state; size_t len_aad; } ;
typedef TYPE_1__ ghash_ctx ;


 scalar_t__ STATE_AAD ;
 int assert (int) ;
 int ghash_add (TYPE_1__*,int const*,size_t) ;

__attribute__((used)) static void ghash_add_aad(ghash_ctx *ctx, const uint8_t *buf, size_t n)
{
  assert(ctx->state == STATE_AAD);
  ctx->len_aad += n;
  ghash_add(ctx, buf, n);
}
