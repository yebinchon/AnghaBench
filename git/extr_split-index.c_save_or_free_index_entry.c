
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct index_state {TYPE_2__* split_index; } ;
struct cache_entry {int index; int ce_flags; } ;
struct TYPE_4__ {TYPE_1__* base; } ;
struct TYPE_3__ {int cache_nr; struct cache_entry** cache; } ;


 int CE_REMOVE ;
 int discard_cache_entry (struct cache_entry*) ;

void save_or_free_index_entry(struct index_state *istate, struct cache_entry *ce)
{
 if (ce->index &&
     istate->split_index &&
     istate->split_index->base &&
     ce->index <= istate->split_index->base->cache_nr &&
     ce == istate->split_index->base->cache[ce->index - 1])
  ce->ce_flags |= CE_REMOVE;
 else
  discard_cache_entry(ce);
}
