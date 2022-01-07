
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int tsd_t ;
typedef int rtree_ctx_t ;
typedef int extent_t ;
struct TYPE_9__ {int nactive; TYPE_1__* bins; int large_mtx; int large; } ;
typedef TYPE_2__ arena_t ;
struct TYPE_10__ {scalar_t__ szind; int slab; } ;
typedef TYPE_3__ alloc_ctx_t ;
struct TYPE_11__ {unsigned int n_shards; } ;
struct TYPE_8__ {int * bin_shards; } ;


 int ATOMIC_RELAXED ;
 unsigned int SC_NBINS ;
 scalar_t__ SC_NSIZES ;
 int arena_bin_reset (int *,TYPE_2__*,int *) ;
 int assert (int) ;
 int atomic_store_zu (int *,int ,int ) ;
 TYPE_5__* bin_infos ;
 scalar_t__ config_prof ;
 scalar_t__ config_stats ;
 void* extent_base_get (int *) ;
 int * extent_list_first (int *) ;
 int extents_rtree ;
 size_t isalloc (int ,void*) ;
 int large_dalloc (int ,int *) ;
 int malloc_mutex_lock (int ,int *) ;
 int malloc_mutex_unlock (int ,int *) ;
 scalar_t__ opt_prof ;
 int prof_free (int *,void*,size_t,TYPE_3__*) ;
 int rtree_szind_slab_read (int ,int *,int *,uintptr_t,int,scalar_t__*,int *) ;
 size_t sz_index2size (scalar_t__) ;
 int * tsd_rtree_ctx (int *) ;
 int tsd_tsdn (int *) ;

void
arena_reset(tsd_t *tsd, arena_t *arena) {
 malloc_mutex_lock(tsd_tsdn(tsd), &arena->large_mtx);

 for (extent_t *extent = extent_list_first(&arena->large); extent !=
     ((void*)0); extent = extent_list_first(&arena->large)) {
  void *ptr = extent_base_get(extent);
  size_t usize;

  malloc_mutex_unlock(tsd_tsdn(tsd), &arena->large_mtx);
  alloc_ctx_t alloc_ctx;
  rtree_ctx_t *rtree_ctx = tsd_rtree_ctx(tsd);
  rtree_szind_slab_read(tsd_tsdn(tsd), &extents_rtree, rtree_ctx,
      (uintptr_t)ptr, 1, &alloc_ctx.szind, &alloc_ctx.slab);
  assert(alloc_ctx.szind != SC_NSIZES);

  if (config_stats || (config_prof && opt_prof)) {
   usize = sz_index2size(alloc_ctx.szind);
   assert(usize == isalloc(tsd_tsdn(tsd), ptr));
  }

  if (config_prof && opt_prof) {
   prof_free(tsd, ptr, usize, &alloc_ctx);
  }
  large_dalloc(tsd_tsdn(tsd), extent);
  malloc_mutex_lock(tsd_tsdn(tsd), &arena->large_mtx);
 }
 malloc_mutex_unlock(tsd_tsdn(tsd), &arena->large_mtx);


 for (unsigned i = 0; i < SC_NBINS; i++) {
  for (unsigned j = 0; j < bin_infos[i].n_shards; j++) {
   arena_bin_reset(tsd, arena,
       &arena->bins[i].bin_shards[j]);
  }
 }

 atomic_store_zu(&arena->nactive, 0, ATOMIC_RELAXED);
}
