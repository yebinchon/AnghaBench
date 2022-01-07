
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;
typedef int git_hash_ctx ;


 int git_hash_ctx_cleanup (int *) ;
 scalar_t__ git_hash_ctx_init (int *) ;
 int git_hash_final (int *,int *) ;
 int git_hash_update (int *,void const*,size_t) ;

int git_hash_buf(git_oid *out, const void *data, size_t len)
{
 git_hash_ctx ctx;
 int error = 0;

 if (git_hash_ctx_init(&ctx) < 0)
  return -1;

 if ((error = git_hash_update(&ctx, data, len)) >= 0)
  error = git_hash_final(out, &ctx);

 git_hash_ctx_cleanup(&ctx);

 return error;
}
