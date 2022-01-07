
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int git_oid ;
typedef int git_hash_ctx ;
struct TYPE_3__ {int len; int data; } ;
typedef TYPE_1__ git_buf_vec ;


 int git_hash_ctx_cleanup (int *) ;
 scalar_t__ git_hash_ctx_init (int *) ;
 int git_hash_final (int *,int *) ;
 int git_hash_update (int *,int ,int ) ;

int git_hash_vec(git_oid *out, git_buf_vec *vec, size_t n)
{
 git_hash_ctx ctx;
 size_t i;
 int error = 0;

 if (git_hash_ctx_init(&ctx) < 0)
  return -1;

 for (i = 0; i < n; i++) {
  if ((error = git_hash_update(&ctx, vec[i].data, vec[i].len)) < 0)
   goto done;
 }

 error = git_hash_final(out, &ctx);

done:
 git_hash_ctx_cleanup(&ctx);

 return error;
}
