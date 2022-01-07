
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {unsigned char* key; } ;
struct TYPE_6__ {size_t block_length; TYPE_1__ _hmac; } ;
typedef TYPE_2__ picohash_ctx_t ;


 int picohash_update (TYPE_2__*,unsigned char*,size_t) ;

__attribute__((used)) static inline void _picohash_hmac_apply_key(picohash_ctx_t *ctx, unsigned char delta)
{
    size_t i;
    for (i = 0; i != ctx->block_length; ++i)
        ctx->_hmac.key[i] ^= delta;
    picohash_update(ctx, ctx->_hmac.key, ctx->block_length);
    for (i = 0; i != ctx->block_length; ++i)
        ctx->_hmac.key[i] ^= delta;
}
