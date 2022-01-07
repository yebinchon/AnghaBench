
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct object_id {unsigned char* hash; } ;
typedef int git_hash_ctx ;
struct TYPE_2__ {int rawsz; int (* init_fn ) (int *) ;int (* final_fn ) (unsigned char*,int *) ;} ;


 int GIT_MAX_RAWSZ ;
 int stub1 (unsigned char*,int *) ;
 int stub2 (int *) ;
 TYPE_1__* the_hash_algo ;

void flush_one_hunk(struct object_id *result, git_hash_ctx *ctx)
{
 unsigned char hash[GIT_MAX_RAWSZ];
 unsigned short carry = 0;
 int i;

 the_hash_algo->final_fn(hash, ctx);
 the_hash_algo->init_fn(ctx);

 for (i = 0; i < the_hash_algo->rawsz; ++i) {
  carry += result->hash[i] + hash[i];
  result->hash[i] = carry;
  carry >>= 8;
 }
}
