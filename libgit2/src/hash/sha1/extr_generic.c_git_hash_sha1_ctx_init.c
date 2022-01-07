
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_hash_sha1_ctx ;


 int git_hash_sha1_init (int *) ;

int git_hash_sha1_ctx_init(git_hash_sha1_ctx *ctx)
{
 return git_hash_sha1_init(ctx);
}
