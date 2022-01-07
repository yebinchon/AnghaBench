
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct index_state {unsigned int cache_nr; int fsmonitor_dirty; TYPE_1__** cache; } ;
struct TYPE_2__ {int ce_flags; } ;


 int CE_FSMONITOR_VALID ;
 int CE_REMOVE ;
 int ewah_new () ;
 int ewah_set (int ,unsigned int) ;

void fill_fsmonitor_bitmap(struct index_state *istate)
{
 unsigned int i, skipped = 0;
 istate->fsmonitor_dirty = ewah_new();
 for (i = 0; i < istate->cache_nr; i++) {
  if (istate->cache[i]->ce_flags & CE_REMOVE)
   skipped++;
  else if (!(istate->cache[i]->ce_flags & CE_FSMONITOR_VALID))
   ewah_set(istate->fsmonitor_dirty, i - skipped);
 }
}
