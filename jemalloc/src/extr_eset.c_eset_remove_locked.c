
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int tsdn_t ;
typedef size_t pszind_t ;
typedef int extent_t ;
struct TYPE_4__ {scalar_t__ state; int npages; int lru; int bitmap; int * heaps; int mtx; } ;
typedef TYPE_1__ eset_t ;


 int ATOMIC_RELAXED ;
 size_t LG_PAGE ;
 int assert (int) ;
 size_t atomic_load_zu (int *,int ) ;
 int atomic_store_zu (int *,size_t,int ) ;
 int bitmap_set (int ,int *,size_t) ;
 scalar_t__ config_stats ;
 int eset_bitmap_info ;
 int eset_stats_sub (TYPE_1__*,size_t,size_t) ;
 scalar_t__ extent_heap_empty (int *) ;
 int extent_heap_remove (int *,int *) ;
 int extent_list_remove (int *,int *) ;
 size_t extent_size_get (int *) ;
 scalar_t__ extent_state_get (int *) ;
 int malloc_mutex_assert_owner (int *,int *) ;
 size_t sz_psz2ind (size_t) ;
 size_t sz_psz_quantize_floor (size_t) ;

void
eset_remove_locked(tsdn_t *tsdn, eset_t *eset, extent_t *extent) {
 malloc_mutex_assert_owner(tsdn, &eset->mtx);
 assert(extent_state_get(extent) == eset->state);

 size_t size = extent_size_get(extent);
 size_t psz = sz_psz_quantize_floor(size);
 pszind_t pind = sz_psz2ind(psz);
 extent_heap_remove(&eset->heaps[pind], extent);

 if (config_stats) {
  eset_stats_sub(eset, pind, size);
 }

 if (extent_heap_empty(&eset->heaps[pind])) {
  bitmap_set(eset->bitmap, &eset_bitmap_info,
      (size_t)pind);
 }
 extent_list_remove(&eset->lru, extent);
 size_t npages = size >> LG_PAGE;




 size_t cur_extents_npages =
     atomic_load_zu(&eset->npages, ATOMIC_RELAXED);
 assert(cur_extents_npages >= npages);
 atomic_store_zu(&eset->npages,
     cur_extents_npages - (size >> LG_PAGE), ATOMIC_RELAXED);
}
