
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int tsdn_t ;
typedef int rtree_ctx_t ;
typedef int extent_t ;
typedef int extent_hooks_t ;
struct TYPE_6__ {int mtx; int delay_coalesce; int npages; int lru; } ;
typedef TYPE_1__ eset_t ;
typedef int arena_t ;


 int ATOMIC_RELAXED ;
 size_t atomic_load_zu (int *,int ) ;
 int eset_remove_locked (int *,TYPE_1__*,int *) ;
 int eset_state_get (TYPE_1__*) ;
 int extent_deregister (int *,int *) ;
 int * extent_list_first (int *) ;




 int extent_state_set (int *,int const) ;
 scalar_t__ extent_try_delayed_coalesce (int *,int *,int **,int *,TYPE_1__*,int *) ;
 int malloc_mutex_lock (int *,int *) ;
 int malloc_mutex_unlock (int *,int *) ;
 int not_reached () ;
 int * tsdn_rtree_ctx (int *,int *) ;

extent_t *
extents_evict(tsdn_t *tsdn, arena_t *arena, extent_hooks_t **r_extent_hooks,
    eset_t *eset, size_t npages_min) {
 rtree_ctx_t rtree_ctx_fallback;
 rtree_ctx_t *rtree_ctx = tsdn_rtree_ctx(tsdn, &rtree_ctx_fallback);

 malloc_mutex_lock(tsdn, &eset->mtx);





 extent_t *extent;
 while (1) {

  extent = extent_list_first(&eset->lru);
  if (extent == ((void*)0)) {
   goto label_return;
  }

  size_t extents_npages = atomic_load_zu(&eset->npages,
      ATOMIC_RELAXED);
  if (extents_npages <= npages_min) {
   extent = ((void*)0);
   goto label_return;
  }
  eset_remove_locked(tsdn, eset, extent);
  if (!eset->delay_coalesce) {
   break;
  }

  if (extent_try_delayed_coalesce(tsdn, arena, r_extent_hooks,
      rtree_ctx, eset, extent)) {
   break;
  }




 }





 switch (eset_state_get(eset)) {
 case 131:
  not_reached();
 case 130:
 case 129:
  extent_state_set(extent, 131);
  break;
 case 128:
  extent_deregister(tsdn, extent);
  break;
 default:
  not_reached();
 }

label_return:
 malloc_mutex_unlock(tsdn, &eset->mtx);
 return extent;
}
