
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int git_hash_ctx ;
struct TYPE_2__ {int (* update_fn ) (int *,unsigned int*,int) ;} ;


 scalar_t__ ce_write (int *,int,unsigned int*,int) ;
 unsigned int htonl (unsigned int) ;
 int stub1 (int *,unsigned int*,int) ;
 int stub2 (int *,unsigned int*,int) ;
 TYPE_1__* the_hash_algo ;

__attribute__((used)) static int write_index_ext_header(git_hash_ctx *context, git_hash_ctx *eoie_context,
      int fd, unsigned int ext, unsigned int sz)
{
 ext = htonl(ext);
 sz = htonl(sz);
 if (eoie_context) {
  the_hash_algo->update_fn(eoie_context, &ext, 4);
  the_hash_algo->update_fn(eoie_context, &sz, 4);
 }
 return ((ce_write(context, fd, &ext, 4) < 0) ||
  (ce_write(context, fd, &sz, 4) < 0)) ? -1 : 0;
}
