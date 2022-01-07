
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int npartial; int partial; } ;
typedef TYPE_1__ cf_poly1305 ;


 int cf_blockwise_accumulate (int ,int *,int,int const*,size_t,int ,TYPE_1__*) ;
 int poly1305_whole_block ;

void cf_poly1305_update(cf_poly1305 *ctx,
                        const uint8_t *buf,
                        size_t nbytes)
{
  cf_blockwise_accumulate(ctx->partial, &ctx->npartial,
                          sizeof ctx->partial,
                          buf, nbytes,
                          poly1305_whole_block,
                          ctx);
}
