
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int rate; int npartial; int partial; } ;
typedef TYPE_1__ cf_sha3_context ;


 int assert (int) ;
 int cf_blockwise_acc_pad (int ,int *,int ,int ,int,int,size_t,int ,TYPE_1__*) ;
 int sha3_block ;

__attribute__((used)) static void pad(cf_sha3_context *ctx, uint8_t domain, size_t npad)
{
  assert(npad >= 1);

  cf_blockwise_acc_pad(ctx->partial, &ctx->npartial, ctx->rate,
                       domain, 0x00, 0x80,
                       npad,
                       sha3_block, ctx);
}
