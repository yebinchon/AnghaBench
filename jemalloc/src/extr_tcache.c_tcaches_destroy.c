
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int tsd_t ;
struct TYPE_5__ {struct TYPE_5__* next; } ;
typedef TYPE_1__ tcaches_t ;
typedef int tcache_t ;


 int malloc_mutex_lock (int ,int *) ;
 int malloc_mutex_unlock (int ,int *) ;
 int tcache_destroy (int *,int *,int) ;
 TYPE_1__* tcaches ;
 TYPE_1__* tcaches_avail ;
 int * tcaches_elm_remove (int *,TYPE_1__*,int) ;
 int tcaches_mtx ;
 int tsd_tsdn (int *) ;

void
tcaches_destroy(tsd_t *tsd, unsigned ind) {
 malloc_mutex_lock(tsd_tsdn(tsd), &tcaches_mtx);
 tcaches_t *elm = &tcaches[ind];
 tcache_t *tcache = tcaches_elm_remove(tsd, elm, 0);
 elm->next = tcaches_avail;
 tcaches_avail = elm;
 malloc_mutex_unlock(tsd_tsdn(tsd), &tcaches_mtx);
 if (tcache != ((void*)0)) {
  tcache_destroy(tsd, tcache, 0);
 }
}
