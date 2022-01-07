
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_9__ ;
typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_10__ ;


typedef int tsdn_t ;
typedef int tsd_t ;
typedef size_t szind_t ;
struct TYPE_20__ {int lock; } ;
typedef TYPE_8__ bin_t ;
struct TYPE_17__ {int mtx; } ;
struct TYPE_16__ {int mtx; } ;
struct TYPE_15__ {int mtx; } ;
struct TYPE_14__ {int mtx; } ;
struct TYPE_13__ {int mtx; } ;
struct TYPE_21__ {TYPE_7__* bins; TYPE_6__* base; int tcache_ql_mtx; TYPE_5__ decay_muzzy; TYPE_4__ decay_dirty; TYPE_3__ eset_retained; TYPE_2__ eset_muzzy; TYPE_1__ eset_dirty; int extent_avail_mtx; int large_mtx; } ;
typedef TYPE_9__ arena_t ;
struct TYPE_19__ {TYPE_8__* bin_shards; } ;
struct TYPE_18__ {int mtx; } ;
struct TYPE_12__ {unsigned int n_shards; } ;


 int ENOENT ;
 int MUTEX_PROF_RESET (int ) ;
 size_t SC_NBINS ;
 TYPE_9__* arena_get (int *,unsigned int,int) ;
 int background_thread_lock ;
 TYPE_10__* bin_infos ;
 int bt2gctx_mtx ;
 scalar_t__ config_prof ;
 int config_stats ;
 int ctl_mtx ;
 scalar_t__ have_background_thread ;
 unsigned int narenas_total_get () ;
 scalar_t__ opt_prof ;
 int prof_dump_mtx ;
 int tdatas_mtx ;
 int * tsd_tsdn (int *) ;

__attribute__((used)) static int
stats_mutexes_reset_ctl(tsd_t *tsd, const size_t *mib,
    size_t miblen, void *oldp, size_t *oldlenp,
    void *newp, size_t newlen) {
 if (!config_stats) {
  return ENOENT;
 }

 tsdn_t *tsdn = tsd_tsdn(tsd);







 malloc_mutex_lock(tsdn, &ctl_mtx); malloc_mutex_prof_data_reset(tsdn, &ctl_mtx); malloc_mutex_unlock(tsdn, &ctl_mtx);;
 if (have_background_thread) {
  malloc_mutex_lock(tsdn, &background_thread_lock); malloc_mutex_prof_data_reset(tsdn, &background_thread_lock); malloc_mutex_unlock(tsdn, &background_thread_lock);;
 }
 if (config_prof && opt_prof) {
  malloc_mutex_lock(tsdn, &bt2gctx_mtx); malloc_mutex_prof_data_reset(tsdn, &bt2gctx_mtx); malloc_mutex_unlock(tsdn, &bt2gctx_mtx);;
  malloc_mutex_lock(tsdn, &tdatas_mtx); malloc_mutex_prof_data_reset(tsdn, &tdatas_mtx); malloc_mutex_unlock(tsdn, &tdatas_mtx);;
  malloc_mutex_lock(tsdn, &prof_dump_mtx); malloc_mutex_prof_data_reset(tsdn, &prof_dump_mtx); malloc_mutex_unlock(tsdn, &prof_dump_mtx);;
 }



 unsigned n = narenas_total_get();

 for (unsigned i = 0; i < n; i++) {
  arena_t *arena = arena_get(tsdn, i, 0);
  if (!arena) {
   continue;
  }
  malloc_mutex_lock(tsdn, &arena->large_mtx); malloc_mutex_prof_data_reset(tsdn, &arena->large_mtx); malloc_mutex_unlock(tsdn, &arena->large_mtx);;
  malloc_mutex_lock(tsdn, &arena->extent_avail_mtx); malloc_mutex_prof_data_reset(tsdn, &arena->extent_avail_mtx); malloc_mutex_unlock(tsdn, &arena->extent_avail_mtx);;
  malloc_mutex_lock(tsdn, &arena->eset_dirty.mtx); malloc_mutex_prof_data_reset(tsdn, &arena->eset_dirty.mtx); malloc_mutex_unlock(tsdn, &arena->eset_dirty.mtx);;
  malloc_mutex_lock(tsdn, &arena->eset_muzzy.mtx); malloc_mutex_prof_data_reset(tsdn, &arena->eset_muzzy.mtx); malloc_mutex_unlock(tsdn, &arena->eset_muzzy.mtx);;
  malloc_mutex_lock(tsdn, &arena->eset_retained.mtx); malloc_mutex_prof_data_reset(tsdn, &arena->eset_retained.mtx); malloc_mutex_unlock(tsdn, &arena->eset_retained.mtx);;
  malloc_mutex_lock(tsdn, &arena->decay_dirty.mtx); malloc_mutex_prof_data_reset(tsdn, &arena->decay_dirty.mtx); malloc_mutex_unlock(tsdn, &arena->decay_dirty.mtx);;
  malloc_mutex_lock(tsdn, &arena->decay_muzzy.mtx); malloc_mutex_prof_data_reset(tsdn, &arena->decay_muzzy.mtx); malloc_mutex_unlock(tsdn, &arena->decay_muzzy.mtx);;
  malloc_mutex_lock(tsdn, &arena->tcache_ql_mtx); malloc_mutex_prof_data_reset(tsdn, &arena->tcache_ql_mtx); malloc_mutex_unlock(tsdn, &arena->tcache_ql_mtx);;
  malloc_mutex_lock(tsdn, &arena->base->mtx); malloc_mutex_prof_data_reset(tsdn, &arena->base->mtx); malloc_mutex_unlock(tsdn, &arena->base->mtx);;

  for (szind_t i = 0; i < SC_NBINS; i++) {
   for (unsigned j = 0; j < bin_infos[i].n_shards; j++) {
    bin_t *bin = &arena->bins[i].bin_shards[j];
    malloc_mutex_lock(tsdn, &bin->lock); malloc_mutex_prof_data_reset(tsdn, &bin->lock); malloc_mutex_unlock(tsdn, &bin->lock);;
   }
  }
 }

 return 0;
}
