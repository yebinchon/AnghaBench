
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int tsdn_t ;
typedef size_t pszind_t ;
typedef int extent_t ;
struct TYPE_4__ {scalar_t__ state; int npages; int lru; int * heaps; int bitmap; int mtx; } ;
typedef TYPE_1__ eset_t ;


 int ATOMIC_RELAXED ;
 size_t LG_PAGE ;
 int assert (int) ;
 size_t atomic_load_zu (int *,int ) ;
 int atomic_store_zu (int *,size_t,int ) ;
 int bitmap_unset (int ,int *,size_t) ;
 scalar_t__ config_stats ;
 int eset_bitmap_info ;
 int eset_stats_add (TYPE_1__*,size_t,size_t) ;
 scalar_t__ extent_heap_empty (int *) ;
 int extent_heap_insert (int *,int *) ;
 int extent_list_append (int *,int *) ;
 size_t extent_size_get (int *) ;
 scalar_t__ extent_state_get (int *) ;
 int malloc_mutex_assert_owner (int *,int *) ;
 size_t sz_psz2ind (size_t) ;
 size_t sz_psz_quantize_floor (size_t) ;

void
eset_insert_locked(tsdn_t *tsdn, eset_t *eset, extent_t *extent) {
 malloc_mutex_assert_owner(tsdn, &eset->mtx);
 assert(extent_state_get(extent) == eset->state);

 size_t size = extent_size_get(extent);
 size_t psz = sz_psz_quantize_floor(size);
 pszind_t pind = sz_psz2ind(psz);
 if (extent_heap_empty(&eset->heaps[pind])) {
  bitmap_unset(eset->bitmap, &eset_bitmap_info,
      (size_t)pind);
 }
 extent_heap_insert(&eset->heaps[pind], extent);

 if (config_stats) {
  eset_stats_add(eset, pind, size);
 }

 extent_list_append(&eset->lru, extent);
 size_t npages = size >> LG_PAGE;





 size_t cur_eset_npages =
     atomic_load_zu(&eset->npages, ATOMIC_RELAXED);
 atomic_store_zu(&eset->npages, cur_eset_npages + npages,
     ATOMIC_RELAXED);
}
