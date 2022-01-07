
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int algo; int sha1; } ;
typedef TYPE_1__ git_hash_ctx ;


 int GIT_HASH_ALGO_SHA1 ;
 int git_hash_sha1_ctx_init (int *) ;

int git_hash_ctx_init(git_hash_ctx *ctx)
{
 int error;

 if ((error = git_hash_sha1_ctx_init(&ctx->sha1)) < 0)
  return error;

 ctx->algo = GIT_HASH_ALGO_SHA1;

 return 0;
}
