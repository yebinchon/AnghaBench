
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int algo; int sha1; } ;
typedef TYPE_1__ git_hash_ctx ;



 int assert (int ) ;
 int git_hash_sha1_ctx_cleanup (int *) ;

void git_hash_ctx_cleanup(git_hash_ctx *ctx)
{
 switch (ctx->algo) {
  case 128:
   git_hash_sha1_ctx_cleanup(&ctx->sha1);
   return;
  default:
   assert(0);
 }
}
