
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int (* hash_final ) (TYPE_2__*,void*) ;int (* hash_reset ) (TYPE_2__*) ;} ;
struct TYPE_10__ {TYPE_1__ _hmac; int digest_length; } ;
typedef TYPE_2__ picohash_ctx_t ;


 int PICOHASH_MAX_DIGEST_LENGTH ;
 int _picohash_hmac_apply_key (TYPE_2__*,int) ;
 int memset (unsigned char*,int ,int ) ;
 int picohash_update (TYPE_2__*,unsigned char*,int ) ;
 int stub1 (TYPE_2__*,unsigned char*) ;
 int stub2 (TYPE_2__*) ;
 int stub3 (TYPE_2__*,void*) ;

__attribute__((used)) static void _picohash_hmac_final(picohash_ctx_t *ctx, void *digest)
{
    unsigned char inner_digest[PICOHASH_MAX_DIGEST_LENGTH];

    ctx->_hmac.hash_final(ctx, inner_digest);

    ctx->_hmac.hash_reset(ctx);
    _picohash_hmac_apply_key(ctx, 0x5c);
    picohash_update(ctx, inner_digest, ctx->digest_length);
    memset(inner_digest, 0, ctx->digest_length);

    ctx->_hmac.hash_final(ctx, digest);
}
