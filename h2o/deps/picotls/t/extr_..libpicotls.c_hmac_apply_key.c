
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct st_picotls_hmac_context_t {int * key; TYPE_1__* algo; TYPE_2__* hash; } ;
struct TYPE_4__ {int (* update ) (TYPE_2__*,int *,size_t) ;} ;
struct TYPE_3__ {size_t block_size; } ;


 int stub1 (TYPE_2__*,int *,size_t) ;

__attribute__((used)) static void hmac_apply_key(struct st_picotls_hmac_context_t *ctx, uint8_t pad)
{
    size_t i;

    for (i = 0; i != ctx->algo->block_size; ++i)
        ctx->key[i] ^= pad;
    ctx->hash->update(ctx->hash, ctx->key, ctx->algo->block_size);
    for (i = 0; i != ctx->algo->block_size; ++i)
        ctx->key[i] ^= pad;
}
