
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unpack_trees_options {int merge; int head_idx; struct cache_entry* df_conflict_entry; int result; } ;
struct traverse_info {unsigned long df_conflicts; struct unpack_trees_options* data; } ;
struct name_entry {int dummy; } ;
struct cache_entry {int dummy; } ;


 int call_unpack_fn (struct cache_entry const* const*,struct unpack_trees_options*) ;
 struct cache_entry* create_ce_entry (struct traverse_info const*,struct name_entry const*,int,int *,int) ;
 int discard_cache_entry (struct cache_entry*) ;
 scalar_t__ do_add_entry (struct unpack_trees_options*,struct cache_entry*,int ,int ) ;

__attribute__((used)) static int unpack_nondirectories(int n, unsigned long mask,
     unsigned long dirmask,
     struct cache_entry **src,
     const struct name_entry *names,
     const struct traverse_info *info)
{
 int i;
 struct unpack_trees_options *o = info->data;
 unsigned long conflicts = info->df_conflicts | dirmask;


 if (mask == dirmask && !src[0])
  return 0;





 for (i = 0; i < n; i++) {
  int stage;
  unsigned int bit = 1ul << i;
  if (conflicts & bit) {
   src[i + o->merge] = o->df_conflict_entry;
   continue;
  }
  if (!(mask & bit))
   continue;
  if (!o->merge)
   stage = 0;
  else if (i + 1 < o->head_idx)
   stage = 1;
  else if (i + 1 > o->head_idx)
   stage = 3;
  else
   stage = 2;
  src[i + o->merge] = create_ce_entry(info, names + i, stage, &o->result, o->merge);
 }

 if (o->merge) {
  int rc = call_unpack_fn((const struct cache_entry * const *)src,
     o);
  for (i = 0; i < n; i++) {
   struct cache_entry *ce = src[i + o->merge];
   if (ce != o->df_conflict_entry)
    discard_cache_entry(ce);
  }
  return rc;
 }

 for (i = 0; i < n; i++)
  if (src[i] && src[i] != o->df_conflict_entry)
   if (do_add_entry(o, src[i], 0, 0))
    return -1;

 return 0;
}
