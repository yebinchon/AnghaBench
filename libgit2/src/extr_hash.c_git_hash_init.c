
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int algo; int sha1; } ;
typedef TYPE_1__ git_hash_ctx ;



 int assert (int ) ;
 int git_hash_sha1_init (int *) ;

int git_hash_init(git_hash_ctx *ctx)
{
 switch (ctx->algo) {
  case 128:
   return git_hash_sha1_init(&ctx->sha1);
  default:
   assert(0);
   return -1;
 }
}
