
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int tsdn_t ;
typedef int ssize_t ;
struct TYPE_7__ {int eset_muzzy; int eset_dirty; int nactive; } ;
typedef TYPE_1__ arena_t ;


 int ATOMIC_RELAXED ;
 int arena_dirty_decay_ms_get (TYPE_1__*) ;
 size_t arena_dss_prec_get (TYPE_1__*) ;
 int arena_muzzy_decay_ms_get (TYPE_1__*) ;
 scalar_t__ arena_nthreads_get (TYPE_1__*,int) ;
 scalar_t__ atomic_load_zu (int *,int ) ;
 char** dss_prec_names ;
 scalar_t__ eset_npages_get (int *) ;

void
arena_basic_stats_merge(tsdn_t *tsdn, arena_t *arena, unsigned *nthreads,
    const char **dss, ssize_t *dirty_decay_ms, ssize_t *muzzy_decay_ms,
    size_t *nactive, size_t *ndirty, size_t *nmuzzy) {
 *nthreads += arena_nthreads_get(arena, 0);
 *dss = dss_prec_names[arena_dss_prec_get(arena)];
 *dirty_decay_ms = arena_dirty_decay_ms_get(arena);
 *muzzy_decay_ms = arena_muzzy_decay_ms_get(arena);
 *nactive += atomic_load_zu(&arena->nactive, ATOMIC_RELAXED);
 *ndirty += eset_npages_get(&arena->eset_dirty);
 *nmuzzy += eset_npages_get(&arena->eset_muzzy);
}
