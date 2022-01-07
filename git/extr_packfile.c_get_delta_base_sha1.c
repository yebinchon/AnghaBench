
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct revindex_entry {int nr; } ;
struct packed_git {int dummy; } ;
struct pack_window {int dummy; } ;
typedef int off_t ;
typedef enum object_type { ____Placeholder_object_type } object_type ;


 int OBJ_OFS_DELTA ;
 int OBJ_REF_DELTA ;
 struct revindex_entry* find_pack_revindex (struct packed_git*,int ) ;
 int get_delta_base (struct packed_git*,struct pack_window**,int *,int,int ) ;
 unsigned char const* nth_packed_object_sha1 (struct packed_git*,int ) ;
 unsigned char* use_pack (struct packed_git*,struct pack_window**,int ,int *) ;

__attribute__((used)) static const unsigned char *get_delta_base_sha1(struct packed_git *p,
      struct pack_window **w_curs,
      off_t curpos,
      enum object_type type,
      off_t delta_obj_offset)
{
 if (type == OBJ_REF_DELTA) {
  unsigned char *base = use_pack(p, w_curs, curpos, ((void*)0));
  return base;
 } else if (type == OBJ_OFS_DELTA) {
  struct revindex_entry *revidx;
  off_t base_offset = get_delta_base(p, w_curs, &curpos,
         type, delta_obj_offset);

  if (!base_offset)
   return ((void*)0);

  revidx = find_pack_revindex(p, base_offset);
  if (!revidx)
   return ((void*)0);

  return nth_packed_object_sha1(p, revidx->nr);
 } else
  return ((void*)0);
}
