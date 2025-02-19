
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int dirty_decay_ms; int muzzy_decay_ms; TYPE_1__* astats; scalar_t__ pmuzzy; scalar_t__ pdirty; scalar_t__ pactive; int dss; scalar_t__ nthreads; } ;
typedef TYPE_2__ ctl_arena_t ;
typedef int bin_stats_t ;
typedef int arena_stats_t ;
typedef int arena_stats_large_t ;
typedef int arena_stats_extents_t ;
struct TYPE_4__ {int * estats; int * lstats; int * bstats; scalar_t__ nflushes_small; scalar_t__ nfills_small; scalar_t__ nrequests_small; scalar_t__ ndalloc_small; scalar_t__ nmalloc_small; scalar_t__ allocated_small; int astats; } ;


 int SC_NBINS ;
 int SC_NPSIZES ;
 int SC_NSIZES ;
 scalar_t__ config_stats ;
 size_t dss_prec_limit ;
 int * dss_prec_names ;
 int memset (int *,int ,int) ;

__attribute__((used)) static void
ctl_arena_clear(ctl_arena_t *ctl_arena) {
 ctl_arena->nthreads = 0;
 ctl_arena->dss = dss_prec_names[dss_prec_limit];
 ctl_arena->dirty_decay_ms = -1;
 ctl_arena->muzzy_decay_ms = -1;
 ctl_arena->pactive = 0;
 ctl_arena->pdirty = 0;
 ctl_arena->pmuzzy = 0;
 if (config_stats) {
  memset(&ctl_arena->astats->astats, 0, sizeof(arena_stats_t));
  ctl_arena->astats->allocated_small = 0;
  ctl_arena->astats->nmalloc_small = 0;
  ctl_arena->astats->ndalloc_small = 0;
  ctl_arena->astats->nrequests_small = 0;
  ctl_arena->astats->nfills_small = 0;
  ctl_arena->astats->nflushes_small = 0;
  memset(ctl_arena->astats->bstats, 0, SC_NBINS *
      sizeof(bin_stats_t));
  memset(ctl_arena->astats->lstats, 0, (SC_NSIZES - SC_NBINS) *
      sizeof(arena_stats_large_t));
  memset(ctl_arena->astats->estats, 0, SC_NPSIZES *
      sizeof(arena_stats_extents_t));
 }
}
