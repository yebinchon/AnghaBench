
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tsdn_t ;
typedef int extent_state_t ;
struct TYPE_3__ {int delay_coalesce; int state; int npages; int lru; int bitmap; int * heaps; int mtx; } ;
typedef TYPE_1__ eset_t ;


 int ATOMIC_RELAXED ;
 int SC_NPSIZES ;
 int WITNESS_RANK_EXTENTS ;
 int atomic_store_zu (int *,int ,int ) ;
 int bitmap_init (int ,int *,int) ;
 int eset_bitmap_info ;
 int extent_heap_new (int *) ;
 int extent_list_init (int *) ;
 scalar_t__ malloc_mutex_init (int *,char*,int ,int ) ;
 int malloc_mutex_rank_exclusive ;

bool
eset_init(tsdn_t *tsdn, eset_t *eset, extent_state_t state,
    bool delay_coalesce) {
 if (malloc_mutex_init(&eset->mtx, "extents", WITNESS_RANK_EXTENTS,
     malloc_mutex_rank_exclusive)) {
  return 1;
 }
 for (unsigned i = 0; i < SC_NPSIZES + 1; i++) {
  extent_heap_new(&eset->heaps[i]);
 }
 bitmap_init(eset->bitmap, &eset_bitmap_info, 1);
 extent_list_init(&eset->lru);
 atomic_store_zu(&eset->npages, 0, ATOMIC_RELAXED);
 eset->state = state;
 eset->delay_coalesce = delay_coalesce;
 return 0;
}
