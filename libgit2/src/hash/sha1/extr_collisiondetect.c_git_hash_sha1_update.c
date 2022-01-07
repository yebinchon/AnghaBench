
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int c; } ;
typedef TYPE_1__ git_hash_sha1_ctx ;


 int SHA1DCUpdate (int *,void const*,size_t) ;
 int assert (TYPE_1__*) ;

int git_hash_sha1_update(git_hash_sha1_ctx *ctx, const void *data, size_t len)
{
 assert(ctx);
 SHA1DCUpdate(&ctx->c, data, len);
 return 0;
}
