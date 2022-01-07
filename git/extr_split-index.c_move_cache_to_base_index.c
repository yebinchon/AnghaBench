
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct split_index {TYPE_1__* base; } ;
struct index_state {int cache_nr; int cache; int * ce_mem_pool; int timestamp; int version; struct split_index* split_index; } ;
struct TYPE_6__ {int ce_flags; } ;
struct TYPE_5__ {int cache_nr; TYPE_3__** cache; int * ce_mem_pool; int cache_alloc; int timestamp; int version; } ;


 int ALLOC_GROW (TYPE_3__**,int,int ) ;
 int CE_UPDATE_IN_BASE ;
 int COPY_ARRAY (TYPE_3__**,int ,int) ;
 int mark_base_index_entries (TYPE_1__*) ;
 int mem_pool_combine (int *,int *) ;
 int mem_pool_init (int **,int ) ;
 TYPE_1__* xcalloc (int,int) ;

void move_cache_to_base_index(struct index_state *istate)
{
 struct split_index *si = istate->split_index;
 int i;





 if (si->base &&
  si->base->ce_mem_pool) {

  if (!istate->ce_mem_pool)
   mem_pool_init(&istate->ce_mem_pool, 0);

  mem_pool_combine(istate->ce_mem_pool, istate->split_index->base->ce_mem_pool);
 }

 si->base = xcalloc(1, sizeof(*si->base));
 si->base->version = istate->version;

 si->base->timestamp = istate->timestamp;
 ALLOC_GROW(si->base->cache, istate->cache_nr, si->base->cache_alloc);
 si->base->cache_nr = istate->cache_nr;




 si->base->ce_mem_pool = istate->ce_mem_pool;
 istate->ce_mem_pool = ((void*)0);

 COPY_ARRAY(si->base->cache, istate->cache, istate->cache_nr);
 mark_base_index_entries(si->base);
 for (i = 0; i < si->base->cache_nr; i++)
  si->base->cache[i]->ce_flags &= ~CE_UPDATE_IN_BASE;
}
