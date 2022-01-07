
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unpack_trees_options {struct index_state* src_index; } ;
struct index_state {int cache_nr; struct cache_entry const** cache; } ;
typedef struct cache_entry {int name; } const cache_entry ;


 int add_entry (struct unpack_trees_options*,struct cache_entry const*,int ,int ) ;
 int ce_namelen (struct cache_entry const*) ;
 int die (char*) ;
 int index_name_pos (struct index_state*,int ,int) ;
 int mark_ce_used (struct cache_entry const*,struct unpack_trees_options*) ;
 scalar_t__ memcmp (int ,int ,int) ;

__attribute__((used)) static void add_same_unmerged(const struct cache_entry *ce,
         struct unpack_trees_options *o)
{
 struct index_state *index = o->src_index;
 int len = ce_namelen(ce);
 int pos = index_name_pos(index, ce->name, len);

 if (0 <= pos)
  die("programming error in a caller of mark_ce_used_same_name");
 for (pos = -pos - 1; pos < index->cache_nr; pos++) {
  struct cache_entry *next = index->cache[pos];
  if (len != ce_namelen(next) ||
      memcmp(ce->name, next->name, len))
   break;
  add_entry(o, next, 0, 0);
  mark_ce_used(next, o);
 }
}
