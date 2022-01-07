
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int _md5; void* _final; void* _update; void* _reset; int digest_length; int block_length; } ;
typedef TYPE_1__ picohash_ctx_t ;


 int PICOHASH_MD5_BLOCK_LENGTH ;
 int PICOHASH_MD5_DIGEST_LENGTH ;
 scalar_t__ _picohash_md5_final ;
 int _picohash_md5_init (int *) ;
 scalar_t__ _picohash_md5_update ;

inline void picohash_init_md5(picohash_ctx_t *ctx)
{
    ctx->block_length = PICOHASH_MD5_BLOCK_LENGTH;
    ctx->digest_length = PICOHASH_MD5_DIGEST_LENGTH;
    ctx->_reset = (void *)_picohash_md5_init;
    ctx->_update = (void *)_picohash_md5_update;
    ctx->_final = (void *)_picohash_md5_final;

    _picohash_md5_init(&ctx->_md5);
}
