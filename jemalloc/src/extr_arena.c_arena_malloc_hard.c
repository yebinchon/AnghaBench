
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsdn_t ;
typedef int szind_t ;
typedef int arena_t ;


 size_t SC_SMALL_MAXCLASS ;
 int * arena_choose_maybe_huge (int ,int *,size_t) ;
 void* arena_malloc_small (int *,int *,int ,int) ;
 int assert (int) ;
 void* large_malloc (int *,int *,int ,int) ;
 scalar_t__ likely (int) ;
 int sz_index2size (int ) ;
 int tsdn_null (int *) ;
 int tsdn_tsd (int *) ;
 scalar_t__ unlikely (int ) ;

void *
arena_malloc_hard(tsdn_t *tsdn, arena_t *arena, size_t size, szind_t ind,
    bool zero) {
 assert(!tsdn_null(tsdn) || arena != ((void*)0));

 if (likely(!tsdn_null(tsdn))) {
  arena = arena_choose_maybe_huge(tsdn_tsd(tsdn), arena, size);
 }
 if (unlikely(arena == ((void*)0))) {
  return ((void*)0);
 }

 if (likely(size <= SC_SMALL_MAXCLASS)) {
  return arena_malloc_small(tsdn, arena, ind, zero);
 }
 return large_malloc(tsdn, arena, sz_index2size(ind), zero);
}
