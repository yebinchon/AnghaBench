
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int algo; int sha1; } ;
typedef TYPE_1__ git_hash_ctx ;



 int assert (int ) ;
 int git_hash_sha1_update (int *,void const*,size_t) ;

int git_hash_update(git_hash_ctx *ctx, const void *data, size_t len)
{
 switch (ctx->algo) {
  case 128:
   return git_hash_sha1_update(&ctx->sha1, data, len);
  default:
   assert(0);
   return -1;
 }
}
