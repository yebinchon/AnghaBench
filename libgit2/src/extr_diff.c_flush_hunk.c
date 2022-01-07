
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned char* id; } ;
typedef TYPE_1__ git_oid ;
typedef int git_hash_ctx ;


 int GIT_OID_RAWSZ ;
 int git_hash_final (TYPE_1__*,int *) ;
 int git_hash_init (int *) ;

__attribute__((used)) static int flush_hunk(git_oid *result, git_hash_ctx *ctx)
{
 git_oid hash;
 unsigned short carry = 0;
 int error, i;

 if ((error = git_hash_final(&hash, ctx)) < 0 ||
     (error = git_hash_init(ctx)) < 0)
  return error;

 for (i = 0; i < GIT_OID_RAWSZ; i++) {
  carry += result->id[i] + hash.id[i];
  result->id[i] = (unsigned char)carry;
  carry >>= 8;
 }

 return 0;
}
