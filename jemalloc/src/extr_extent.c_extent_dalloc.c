
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tsdn_t ;
typedef int extent_t ;
struct TYPE_3__ {int extent_avail_mtx; int extent_avail_cnt; int extent_avail; } ;
typedef TYPE_1__ arena_t ;


 int ATOMIC_RELAXED ;
 int atomic_fetch_add_zu (int *,int,int ) ;
 int extent_avail_insert (int *,int *) ;
 int malloc_mutex_lock (int *,int *) ;
 int malloc_mutex_unlock (int *,int *) ;

void
extent_dalloc(tsdn_t *tsdn, arena_t *arena, extent_t *extent) {
 malloc_mutex_lock(tsdn, &arena->extent_avail_mtx);
 extent_avail_insert(&arena->extent_avail, extent);
 atomic_fetch_add_zu(&arena->extent_avail_cnt, 1, ATOMIC_RELAXED);
 malloc_mutex_unlock(tsdn, &arena->extent_avail_mtx);
}
