
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int tsd_t ;
struct TYPE_5__ {int base; int eset_muzzy; int eset_dirty; } ;
typedef TYPE_1__ arena_t ;


 int arena_destroy_retained (int ,TYPE_1__*) ;
 scalar_t__ arena_nthreads_get (TYPE_1__*,int) ;
 int arena_set (scalar_t__,int *) ;
 int assert (int) ;
 int base_delete (int ,int ) ;
 scalar_t__ base_ind_get (int ) ;
 scalar_t__ eset_npages_get (int *) ;
 scalar_t__ narenas_auto ;
 int tsd_tsdn (int *) ;

void
arena_destroy(tsd_t *tsd, arena_t *arena) {
 assert(base_ind_get(arena->base) >= narenas_auto);
 assert(arena_nthreads_get(arena, 0) == 0);
 assert(arena_nthreads_get(arena, 1) == 0);






 assert(eset_npages_get(&arena->eset_dirty) == 0);
 assert(eset_npages_get(&arena->eset_muzzy) == 0);


 arena_destroy_retained(tsd_tsdn(tsd), arena);
 arena_set(base_ind_get(arena->base), ((void*)0));





 base_delete(tsd_tsdn(tsd), arena->base);
}
