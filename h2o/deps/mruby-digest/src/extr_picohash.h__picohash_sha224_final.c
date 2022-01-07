
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int _picohash_sha256_ctx_t ;


 int PICOHASH_SHA224_DIGEST_LENGTH ;
 int _picohash_sha256_do_final (int *,void*,int ) ;

inline void _picohash_sha224_final(_picohash_sha256_ctx_t *ctx, void *digest)
{
    _picohash_sha256_do_final(ctx, digest, PICOHASH_SHA224_DIGEST_LENGTH);
}
