
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct unpack_trees_options {size_t cache_bottom; TYPE_1__* src_index; } ;
struct cache_entry {int ce_flags; } ;
struct TYPE_2__ {size_t cache_nr; struct cache_entry** cache; } ;


 int CE_UNPACKED ;

__attribute__((used)) static void mark_ce_used(struct cache_entry *ce, struct unpack_trees_options *o)
{
 ce->ce_flags |= CE_UNPACKED;

 if (o->cache_bottom < o->src_index->cache_nr &&
     o->src_index->cache[o->cache_bottom] == ce) {
  int bottom = o->cache_bottom;
  while (bottom < o->src_index->cache_nr &&
         o->src_index->cache[bottom]->ce_flags & CE_UNPACKED)
   bottom++;
  o->cache_bottom = bottom;
 }
}
