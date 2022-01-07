
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsdn_t ;
typedef int extent_t ;
typedef int extent_hooks_t ;
typedef int arena_t ;


 int * EXTENT_HOOKS_INITIALIZER ;
 int LG_PAGE ;
 int arena_extents_dirty_dalloc (int *,int *,int **,int *) ;
 int arena_nactive_sub (int *,int) ;
 int extent_size_get (int *) ;

__attribute__((used)) static void
arena_slab_dalloc(tsdn_t *tsdn, arena_t *arena, extent_t *slab) {
 arena_nactive_sub(arena, extent_size_get(slab) >> LG_PAGE);

 extent_hooks_t *extent_hooks = EXTENT_HOOKS_INITIALIZER;
 arena_extents_dirty_dalloc(tsdn, arena, &extent_hooks, slab);
}
