
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct packed_git {int index_size; unsigned char* index_data; int pack_name; } ;
typedef int off_t ;
typedef int git_hash_ctx ;
struct TYPE_2__ {int rawsz; int (* final_fn ) (unsigned char*,int *) ;int (* update_fn ) (int *,unsigned char const*,unsigned int) ;int (* init_fn ) (int *) ;} ;


 int GIT_MAX_RAWSZ ;
 int error (char*,int ) ;
 int hasheq (unsigned char*,unsigned char const*) ;
 scalar_t__ open_pack_index (struct packed_git*) ;
 int stub1 (int *) ;
 int stub2 (int *,unsigned char const*,unsigned int) ;
 int stub3 (unsigned char*,int *) ;
 TYPE_1__* the_hash_algo ;

int verify_pack_index(struct packed_git *p)
{
 off_t index_size;
 const unsigned char *index_base;
 git_hash_ctx ctx;
 unsigned char hash[GIT_MAX_RAWSZ];
 int err = 0;

 if (open_pack_index(p))
  return error("packfile %s index not opened", p->pack_name);
 index_size = p->index_size;
 index_base = p->index_data;


 the_hash_algo->init_fn(&ctx);
 the_hash_algo->update_fn(&ctx, index_base, (unsigned int)(index_size - the_hash_algo->rawsz));
 the_hash_algo->final_fn(hash, &ctx);
 if (!hasheq(hash, index_base + index_size - the_hash_algo->rawsz))
  err = error("Packfile index for %s hash mismatch",
       p->pack_name);
 return err;
}
