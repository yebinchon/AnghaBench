
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsd_t ;
typedef int arena_t ;


 scalar_t__ arena_dirty_decay_ms_default_get () ;
 int arena_dirty_decay_ms_set (int ,int *,int ) ;
 int * arena_get (int ,scalar_t__,int) ;
 scalar_t__ arena_muzzy_decay_ms_default_get () ;
 int arena_muzzy_decay_ms_set (int ,int *,int ) ;
 int assert (int) ;
 scalar_t__ huge_arena_ind ;
 int malloc_initialized () ;
 int tsd_tsdn (int *) ;

arena_t *
arena_choose_huge(tsd_t *tsd) {

 if (huge_arena_ind == 0) {
  assert(!malloc_initialized());
 }

 arena_t *huge_arena = arena_get(tsd_tsdn(tsd), huge_arena_ind, 0);
 if (huge_arena == ((void*)0)) {

  assert(huge_arena_ind != 0);
  huge_arena = arena_get(tsd_tsdn(tsd), huge_arena_ind, 1);
  if (huge_arena == ((void*)0)) {
   return ((void*)0);
  }






  if (arena_dirty_decay_ms_default_get() > 0) {
   arena_dirty_decay_ms_set(tsd_tsdn(tsd), huge_arena, 0);
  }
  if (arena_muzzy_decay_ms_default_get() > 0) {
   arena_muzzy_decay_ms_set(tsd_tsdn(tsd), huge_arena, 0);
  }
 }

 return huge_arena;
}
