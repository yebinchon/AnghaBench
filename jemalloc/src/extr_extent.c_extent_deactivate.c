
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int tsdn_t ;
typedef int extent_t ;
struct TYPE_4__ {int mtx; } ;
typedef TYPE_1__ eset_t ;
typedef int arena_t ;


 int extent_deactivate_locked (int *,int *,TYPE_1__*,int *) ;
 int malloc_mutex_lock (int *,int *) ;
 int malloc_mutex_unlock (int *,int *) ;

__attribute__((used)) static void
extent_deactivate(tsdn_t *tsdn, arena_t *arena, eset_t *eset,
    extent_t *extent) {
 malloc_mutex_lock(tsdn, &eset->mtx);
 extent_deactivate_locked(tsdn, arena, eset, extent);
 malloc_mutex_unlock(tsdn, &eset->mtx);
}
