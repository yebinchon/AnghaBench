
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int rate; int npartial; int partial; } ;
typedef TYPE_1__ cf_sha3_context ;


 int cf_blockwise_accumulate (int ,int *,int ,void const*,size_t,int ,TYPE_1__*) ;
 int sha3_block ;

__attribute__((used)) static void sha3_update(cf_sha3_context *ctx, const void *data, size_t nbytes)
{
  cf_blockwise_accumulate(ctx->partial, &ctx->npartial, ctx->rate,
                          data, nbytes,
                          sha3_block, ctx);
}
