
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int verify_fn ;
typedef int uint32_t ;
struct repository {int dummy; } ;
struct progress {int dummy; } ;
struct packed_git {int index_data; } ;
struct pack_window {int dummy; } ;


 int unuse_pack (struct pack_window**) ;
 int verify_pack_index (struct packed_git*) ;
 int verify_packfile (struct repository*,struct packed_git*,struct pack_window**,int ,struct progress*,int ) ;

int verify_pack(struct repository *r, struct packed_git *p, verify_fn fn,
  struct progress *progress, uint32_t base_count)
{
 int err = 0;
 struct pack_window *w_curs = ((void*)0);

 err |= verify_pack_index(p);
 if (!p->index_data)
  return -1;

 err |= verify_packfile(r, p, &w_curs, fn, progress, base_count);
 unuse_pack(&w_curs);

 return err;
}
