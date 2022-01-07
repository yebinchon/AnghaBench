
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct index_state {int cache_changed; TYPE_2__* split_index; int ce_mem_pool; } ;
struct TYPE_4__ {TYPE_1__* base; } ;
struct TYPE_3__ {scalar_t__ cache_nr; int ce_mem_pool; } ;


 int SOMETHING_CHANGED ;
 int discard_split_index (struct index_state*) ;
 int mem_pool_combine (int ,int ) ;

void remove_split_index(struct index_state *istate)
{
 if (istate->split_index) {
  if (istate->split_index->base) {







   mem_pool_combine(istate->ce_mem_pool,
      istate->split_index->base->ce_mem_pool);
   istate->split_index->base->cache_nr = 0;
  }






  discard_split_index(istate);

  istate->cache_changed |= SOMETHING_CHANGED;
 }
}
