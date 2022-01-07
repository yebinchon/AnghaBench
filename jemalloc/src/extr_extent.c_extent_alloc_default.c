
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsdn_t ;
typedef int extent_hooks_t ;
typedef int arena_t ;


 int ALIGNMENT_CEILING (size_t,int ) ;
 int PAGE ;
 int * arena_get (int *,unsigned int,int) ;
 int assert (int ) ;
 void* extent_alloc_default_impl (int *,int *,void*,size_t,int ,int*,int*) ;
 int * tsdn_fetch () ;

__attribute__((used)) static void *
extent_alloc_default(extent_hooks_t *extent_hooks, void *new_addr, size_t size,
    size_t alignment, bool *zero, bool *commit, unsigned arena_ind) {
 tsdn_t *tsdn;
 arena_t *arena;

 tsdn = tsdn_fetch();
 arena = arena_get(tsdn, arena_ind, 0);




 assert(arena != ((void*)0));

 return extent_alloc_default_impl(tsdn, arena, new_addr, size,
     ALIGNMENT_CEILING(alignment, PAGE), zero, commit);
}
