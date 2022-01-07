
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int c; } ;
typedef TYPE_1__ git_hash_sha1_ctx ;
typedef size_t CC_LONG ;


 size_t CC_LONG_MAX ;
 int CC_SHA1_Update (int *,unsigned char const*,size_t) ;
 int assert (TYPE_1__*) ;

int git_hash_sha1_update(git_hash_sha1_ctx *ctx, const void *_data, size_t len)
{
 const unsigned char *data = _data;

 assert(ctx);

 while (len > 0) {
  CC_LONG chunk = (len > CC_LONG_MAX) ? CC_LONG_MAX : (CC_LONG)len;

  CC_SHA1_Update(&ctx->c, data, chunk);

  data += chunk;
  len -= chunk;
 }

 return 0;
}
