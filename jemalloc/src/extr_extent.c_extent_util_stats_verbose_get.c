
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int tsdn_t ;
typedef size_t szind_t ;
typedef int extent_t ;
struct TYPE_7__ {size_t curslabs; size_t curregs; } ;
struct TYPE_8__ {int lock; int slabs_nonfull; int * slabcur; TYPE_2__ stats; } ;
typedef TYPE_3__ bin_t ;
struct TYPE_9__ {TYPE_1__* bins; } ;
typedef TYPE_4__ arena_t ;
struct TYPE_10__ {size_t nregs; } ;
struct TYPE_6__ {TYPE_3__* bin_shards; } ;


 int ATOMIC_RELAXED ;
 int * arenas ;
 int assert (int) ;
 scalar_t__ atomic_load_p (int *,int ) ;
 TYPE_5__* bin_infos ;
 scalar_t__ config_stats ;
 int * extent_addr_get (int *) ;
 size_t extent_arena_ind_get (int const*) ;
 unsigned int extent_binshard_get (int const*) ;
 int * extent_heap_first (int *) ;
 size_t extent_nfree_get (int const*) ;
 size_t extent_size_get (int const*) ;
 int extent_slab_get (int const*) ;
 size_t extent_szind_get (int const*) ;
 size_t extent_usize_get (int const*) ;
 int * iealloc (int *,void const*) ;
 int malloc_mutex_lock (int *,int *) ;
 int malloc_mutex_unlock (int *,int *) ;
 scalar_t__ unlikely (int ) ;

void
extent_util_stats_verbose_get(tsdn_t *tsdn, const void *ptr,
    size_t *nfree, size_t *nregs, size_t *size,
    size_t *bin_nfree, size_t *bin_nregs, void **slabcur_addr) {
 assert(ptr != ((void*)0) && nfree != ((void*)0) && nregs != ((void*)0) && size != ((void*)0)
     && bin_nfree != ((void*)0) && bin_nregs != ((void*)0) && slabcur_addr != ((void*)0));

 const extent_t *extent = iealloc(tsdn, ptr);
 if (unlikely(extent == ((void*)0))) {
  *nfree = *nregs = *size = *bin_nfree = *bin_nregs = 0;
  *slabcur_addr = ((void*)0);
  return;
 }

 *size = extent_size_get(extent);
 if (!extent_slab_get(extent)) {
  *nfree = *bin_nfree = *bin_nregs = 0;
  *nregs = 1;
  *slabcur_addr = ((void*)0);
  return;
 }

 *nfree = extent_nfree_get(extent);
 const szind_t szind = extent_szind_get(extent);
 *nregs = bin_infos[szind].nregs;
 assert(*nfree <= *nregs);
 assert(*nfree * extent_usize_get(extent) <= *size);

 const arena_t *arena = (arena_t *)atomic_load_p(
     &arenas[extent_arena_ind_get(extent)], ATOMIC_RELAXED);
 assert(arena != ((void*)0));
 const unsigned binshard = extent_binshard_get(extent);
 bin_t *bin = &arena->bins[szind].bin_shards[binshard];

 malloc_mutex_lock(tsdn, &bin->lock);
 if (config_stats) {
  *bin_nregs = *nregs * bin->stats.curslabs;
  assert(*bin_nregs >= bin->stats.curregs);
  *bin_nfree = *bin_nregs - bin->stats.curregs;
 } else {
  *bin_nfree = *bin_nregs = 0;
 }
 extent_t *slab;
 if (bin->slabcur != ((void*)0)) {
  slab = bin->slabcur;
 } else {
  slab = extent_heap_first(&bin->slabs_nonfull);
 }
 *slabcur_addr = slab != ((void*)0) ? extent_addr_get(slab) : ((void*)0);
 malloc_mutex_unlock(tsdn, &bin->lock);
}
