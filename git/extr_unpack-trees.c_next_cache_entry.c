
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unpack_trees_options {int cache_bottom; struct index_state* src_index; } ;
struct index_state {int cache_nr; struct cache_entry** cache; } ;
struct cache_entry {int ce_flags; } ;


 int CE_UNPACKED ;

__attribute__((used)) static struct cache_entry *next_cache_entry(struct unpack_trees_options *o)
{
 const struct index_state *index = o->src_index;
 int pos = o->cache_bottom;

 while (pos < index->cache_nr) {
  struct cache_entry *ce = index->cache[pos];
  if (!(ce->ce_flags & CE_UNPACKED))
   return ce;
  pos++;
 }
 return ((void*)0);
}
