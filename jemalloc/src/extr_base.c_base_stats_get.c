
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tsdn_t ;
struct TYPE_3__ {size_t allocated; size_t resident; size_t mapped; size_t n_thp; int mtx; } ;
typedef TYPE_1__ base_t ;


 int assert (int) ;
 int cassert (int ) ;
 int config_stats ;
 int malloc_mutex_lock (int *,int *) ;
 int malloc_mutex_unlock (int *,int *) ;

void
base_stats_get(tsdn_t *tsdn, base_t *base, size_t *allocated, size_t *resident,
    size_t *mapped, size_t *n_thp) {
 cassert(config_stats);

 malloc_mutex_lock(tsdn, &base->mtx);
 assert(base->allocated <= base->resident);
 assert(base->resident <= base->mapped);
 *allocated = base->allocated;
 *resident = base->resident;
 *mapped = base->mapped;
 *n_thp = base->n_thp;
 malloc_mutex_unlock(tsdn, &base->mtx);
}
