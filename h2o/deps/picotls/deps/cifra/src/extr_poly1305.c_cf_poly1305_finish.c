
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_5__ {int * h; scalar_t__* s; scalar_t__ npartial; } ;
typedef TYPE_1__ cf_poly1305 ;


 int mem_clean (TYPE_1__*,int) ;
 int poly1305_add (int *,scalar_t__*) ;
 int poly1305_full_reduce (int *) ;
 int poly1305_last_block (TYPE_1__*) ;

void cf_poly1305_finish(cf_poly1305 *ctx,
                        uint8_t out[16])
{
  if (ctx->npartial)
    poly1305_last_block(ctx);

  uint32_t s[17];
  size_t i;
  for (i = 0; i < 16; i++)
    s[i] = ctx->s[i];
  s[16] = 0;

  poly1305_full_reduce(ctx->h);
  poly1305_add(ctx->h, s);

  for (i = 0; i < 16; i++)
    out[i] = ctx->h[i];

  mem_clean(ctx, sizeof *ctx);
}
