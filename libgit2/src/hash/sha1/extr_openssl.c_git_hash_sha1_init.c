
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int c; } ;
typedef TYPE_1__ git_hash_sha1_ctx ;


 int GIT_ERROR_SHA1 ;
 int SHA1_Init (int *) ;
 int assert (TYPE_1__*) ;
 int git_error_set (int ,char*) ;

int git_hash_sha1_init(git_hash_sha1_ctx *ctx)
{
 assert(ctx);

 if (SHA1_Init(&ctx->c) != 1) {
  git_error_set(GIT_ERROR_SHA1, "hash_openssl: failed to initialize hash context");
  return -1;
 }

 return 0;
}
