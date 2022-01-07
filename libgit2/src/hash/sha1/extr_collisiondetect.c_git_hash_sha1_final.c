
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int id; } ;
typedef TYPE_1__ git_oid ;
struct TYPE_7__ {int c; } ;
typedef TYPE_2__ git_hash_sha1_ctx ;


 int GIT_ERROR_SHA1 ;
 scalar_t__ SHA1DCFinal (int ,int *) ;
 int assert (TYPE_2__*) ;
 int git_error_set (int ,char*) ;

int git_hash_sha1_final(git_oid *out, git_hash_sha1_ctx *ctx)
{
 assert(ctx);
 if (SHA1DCFinal(out->id, &ctx->c)) {
  git_error_set(GIT_ERROR_SHA1, "SHA1 collision attack detected");
  return -1;
 }

 return 0;
}
