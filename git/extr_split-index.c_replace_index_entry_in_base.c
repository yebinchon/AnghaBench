
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct index_state {TYPE_2__* split_index; } ;
struct cache_entry {scalar_t__ index; } ;
struct TYPE_4__ {TYPE_1__* base; } ;
struct TYPE_3__ {scalar_t__ cache_nr; struct cache_entry** cache; } ;


 int discard_cache_entry (struct cache_entry*) ;

void replace_index_entry_in_base(struct index_state *istate,
     struct cache_entry *old_entry,
     struct cache_entry *new_entry)
{
 if (old_entry->index &&
     istate->split_index &&
     istate->split_index->base &&
     old_entry->index <= istate->split_index->base->cache_nr) {
  new_entry->index = old_entry->index;
  if (old_entry != istate->split_index->base->cache[new_entry->index - 1])
   discard_cache_entry(istate->split_index->base->cache[new_entry->index - 1]);
  istate->split_index->base->cache[new_entry->index - 1] = new_entry;
 }
}
