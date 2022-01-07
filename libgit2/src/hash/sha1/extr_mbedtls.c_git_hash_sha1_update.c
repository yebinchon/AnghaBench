
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int c; } ;
typedef TYPE_1__ git_hash_sha1_ctx ;


 int assert (TYPE_1__*) ;
 int mbedtls_sha1_update (int *,void const*,size_t) ;

int git_hash_sha1_update(git_hash_sha1_ctx *ctx, const void *data, size_t len)
{
    assert(ctx);
    mbedtls_sha1_update(&ctx->c, data, len);
    return 0;
}
