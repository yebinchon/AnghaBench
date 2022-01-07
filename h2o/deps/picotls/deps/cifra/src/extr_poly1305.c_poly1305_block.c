
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int r; int h; } ;
typedef TYPE_1__ cf_poly1305 ;


 int poly1305_add (int ,int const*) ;
 int poly1305_mul (int ,int ) ;

__attribute__((used)) static void poly1305_block(cf_poly1305 *ctx,
                           const uint32_t c[17])
{
  poly1305_add(ctx->h, c);
  poly1305_mul(ctx->h, ctx->r);
}
