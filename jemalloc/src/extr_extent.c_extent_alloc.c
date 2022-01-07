
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tsdn_t ;
typedef int extent_t ;
struct TYPE_3__ {int extent_avail_mtx; int extent_avail_cnt; int extent_avail; int base; } ;
typedef TYPE_1__ arena_t ;


 int ATOMIC_RELAXED ;
 int atomic_fetch_sub_zu (int *,int,int ) ;
 int * base_alloc_extent (int *,int ) ;
 int * extent_avail_first (int *) ;
 int extent_avail_remove (int *,int *) ;
 int malloc_mutex_lock (int *,int *) ;
 int malloc_mutex_unlock (int *,int *) ;

extent_t *
extent_alloc(tsdn_t *tsdn, arena_t *arena) {
 malloc_mutex_lock(tsdn, &arena->extent_avail_mtx);
 extent_t *extent = extent_avail_first(&arena->extent_avail);
 if (extent == ((void*)0)) {
  malloc_mutex_unlock(tsdn, &arena->extent_avail_mtx);
  return base_alloc_extent(tsdn, arena->base);
 }
 extent_avail_remove(&arena->extent_avail, extent);
 atomic_fetch_sub_zu(&arena->extent_avail_cnt, 1, ATOMIC_RELAXED);
 malloc_mutex_unlock(tsdn, &arena->extent_avail_mtx);
 return extent;
}
