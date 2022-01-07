
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsdn_t ;


 int malloc_mutex_postfork_child (int *,int *) ;
 int tcaches_mtx ;

void
tcache_postfork_child(tsdn_t *tsdn) {
 malloc_mutex_postfork_child(tsdn, &tcaches_mtx);
}
