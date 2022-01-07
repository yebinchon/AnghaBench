
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int tsdn_t ;
struct TYPE_6__ {int pmuzzy; int pdirty; int pactive; int muzzy_decay_ms; int dirty_decay_ms; int dss; int nthreads; TYPE_1__* astats; } ;
typedef TYPE_2__ ctl_arena_t ;
typedef int arena_t ;
struct TYPE_7__ {int curregs; scalar_t__ nflushes; scalar_t__ nfills; scalar_t__ nrequests; scalar_t__ ndalloc; scalar_t__ nmalloc; } ;
struct TYPE_5__ {int allocated_small; TYPE_4__* bstats; int nflushes_small; int nfills_small; int nrequests_small; int ndalloc_small; int nmalloc_small; int estats; int lstats; int astats; } ;


 unsigned int SC_NBINS ;
 int arena_basic_stats_merge (int *,int *,int *,int *,int *,int *,int *,int *,int *) ;
 int arena_stats_merge (int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,TYPE_4__*,int ,int ) ;
 scalar_t__ config_stats ;
 int sz_index2size (unsigned int) ;

__attribute__((used)) static void
ctl_arena_stats_amerge(tsdn_t *tsdn, ctl_arena_t *ctl_arena, arena_t *arena) {
 unsigned i;

 if (config_stats) {
  arena_stats_merge(tsdn, arena, &ctl_arena->nthreads,
      &ctl_arena->dss, &ctl_arena->dirty_decay_ms,
      &ctl_arena->muzzy_decay_ms, &ctl_arena->pactive,
      &ctl_arena->pdirty, &ctl_arena->pmuzzy,
      &ctl_arena->astats->astats, ctl_arena->astats->bstats,
      ctl_arena->astats->lstats, ctl_arena->astats->estats);

  for (i = 0; i < SC_NBINS; i++) {
   ctl_arena->astats->allocated_small +=
       ctl_arena->astats->bstats[i].curregs *
       sz_index2size(i);
   ctl_arena->astats->nmalloc_small +=
       ctl_arena->astats->bstats[i].nmalloc;
   ctl_arena->astats->ndalloc_small +=
       ctl_arena->astats->bstats[i].ndalloc;
   ctl_arena->astats->nrequests_small +=
       ctl_arena->astats->bstats[i].nrequests;
   ctl_arena->astats->nfills_small +=
       ctl_arena->astats->bstats[i].nfills;
   ctl_arena->astats->nflushes_small +=
       ctl_arena->astats->bstats[i].nflushes;
  }
 } else {
  arena_basic_stats_merge(tsdn, arena, &ctl_arena->nthreads,
      &ctl_arena->dss, &ctl_arena->dirty_decay_ms,
      &ctl_arena->muzzy_decay_ms, &ctl_arena->pactive,
      &ctl_arena->pdirty, &ctl_arena->pmuzzy);
 }
}
