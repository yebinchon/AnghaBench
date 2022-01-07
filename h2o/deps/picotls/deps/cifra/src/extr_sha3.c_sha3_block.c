
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int rate; } ;
typedef TYPE_1__ cf_sha3_context ;


 int absorb (TYPE_1__*,int const*,int ) ;
 int permute (TYPE_1__*) ;

__attribute__((used)) static void sha3_block(void *vctx, const uint8_t *data)
{
  cf_sha3_context *ctx = vctx;

  absorb(ctx, data, ctx->rate);
  permute(ctx);
}
