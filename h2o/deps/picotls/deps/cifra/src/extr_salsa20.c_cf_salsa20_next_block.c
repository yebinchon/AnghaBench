
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int ncounter; int nonce; int constant; int key1; int key0; } ;
typedef TYPE_1__ cf_salsa20_ctx ;


 int cf_salsa20_core (int ,int ,int ,int ,int *) ;
 int incr_le (int ,int ) ;

__attribute__((used)) static void cf_salsa20_next_block(void *vctx, uint8_t *out)
{
  cf_salsa20_ctx *ctx = vctx;
  cf_salsa20_core(ctx->key0,
                  ctx->key1,
                  ctx->nonce,
                  ctx->constant,
                  out);
  incr_le(ctx->nonce, ctx->ncounter);
}
