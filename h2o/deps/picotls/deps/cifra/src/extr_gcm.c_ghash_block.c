
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int Y; int H; } ;
typedef TYPE_1__ ghash_ctx ;
typedef int cf_gf128 ;


 int cf_gf128_add (int ,int ,int ) ;
 int cf_gf128_frombytes_be (int const*,int ) ;
 int cf_gf128_mul (int ,int ,int ) ;

__attribute__((used)) static void ghash_block(void *vctx, const uint8_t *data)
{
  ghash_ctx *ctx = vctx;
  cf_gf128 gfdata;
  cf_gf128_frombytes_be(data, gfdata);
  cf_gf128_add(gfdata, ctx->Y, ctx->Y);
  cf_gf128_mul(ctx->Y, ctx->H, ctx->Y);
}
