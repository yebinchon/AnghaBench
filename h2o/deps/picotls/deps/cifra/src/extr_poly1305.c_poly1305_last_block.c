
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {size_t npartial; int* partial; } ;
typedef TYPE_1__ cf_poly1305 ;


 int poly1305_block (TYPE_1__*,int*) ;

__attribute__((used)) static void poly1305_last_block(cf_poly1305 *ctx)
{
  uint32_t c[17] = { 0 };
  size_t i;

  for (i = 0; i < ctx->npartial; i++)
    c[i] = ctx->partial[i];

  c[ctx->npartial] = 1;
  poly1305_block(ctx, c);
}
