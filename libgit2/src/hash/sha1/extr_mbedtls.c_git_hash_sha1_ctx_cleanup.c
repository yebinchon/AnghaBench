
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int c; } ;
typedef TYPE_1__ git_hash_sha1_ctx ;


 int assert (TYPE_1__*) ;
 int mbedtls_sha1_free (int *) ;

void git_hash_sha1_ctx_cleanup(git_hash_sha1_ctx *ctx)
{
    assert(ctx);
    mbedtls_sha1_free(&ctx->c);
}
