
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsdn_t ;
typedef int extent_t ;
typedef int eset_t ;
typedef int arena_t ;


 scalar_t__ arena_ind_get (int *) ;
 int assert (int) ;
 int eset_remove_locked (int *,int *,int *) ;
 scalar_t__ eset_state_get (int *) ;
 scalar_t__ extent_arena_ind_get (int *) ;
 int extent_state_active ;
 scalar_t__ extent_state_get (int *) ;
 int extent_state_set (int *,int ) ;

__attribute__((used)) static void
extent_activate_locked(tsdn_t *tsdn, arena_t *arena, eset_t *eset,
    extent_t *extent) {
 assert(extent_arena_ind_get(extent) == arena_ind_get(arena));
 assert(extent_state_get(extent) == eset_state_get(eset));

 eset_remove_locked(tsdn, eset, extent);
 extent_state_set(extent, extent_state_active);
}
