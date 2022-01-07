
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int tsdn_t ;
typedef int extent_t ;
struct TYPE_5__ {int large; int large_mtx; } ;
typedef TYPE_1__ arena_t ;


 int arena_extent_dalloc_large_prep (int *,TYPE_1__*,int *) ;
 int arena_is_auto (TYPE_1__*) ;
 int extent_addr_get (int *) ;
 int extent_list_remove (int *,int *) ;
 int extent_usize_get (int *) ;
 int large_dalloc_maybe_junk (int ,int ) ;
 int malloc_mutex_assert_owner (int *,int *) ;
 int malloc_mutex_lock (int *,int *) ;
 int malloc_mutex_unlock (int *,int *) ;

__attribute__((used)) static void
large_dalloc_prep_impl(tsdn_t *tsdn, arena_t *arena, extent_t *extent,
    bool junked_locked) {
 if (!junked_locked) {

  if (!arena_is_auto(arena)) {
   malloc_mutex_lock(tsdn, &arena->large_mtx);
   extent_list_remove(&arena->large, extent);
   malloc_mutex_unlock(tsdn, &arena->large_mtx);
  }
  large_dalloc_maybe_junk(extent_addr_get(extent),
      extent_usize_get(extent));
 } else {

  if (!arena_is_auto(arena)) {
   malloc_mutex_assert_owner(tsdn, &arena->large_mtx);
   extent_list_remove(&arena->large, extent);
  }
 }
 arena_extent_dalloc_large_prep(tsdn, arena, extent);
}
