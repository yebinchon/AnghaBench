
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int state; int H; } ;
typedef TYPE_1__ ghash_ctx ;


 int STATE_AAD ;
 int cf_gf128_frombytes_be (int *,int ) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void ghash_init(ghash_ctx *ctx, uint8_t H[16])
{
  memset(ctx, 0, sizeof *ctx);
  cf_gf128_frombytes_be(H, ctx->H);
  ctx->state = STATE_AAD;
}
