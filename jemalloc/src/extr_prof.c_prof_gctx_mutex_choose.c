
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int malloc_mutex_t ;


 int ATOMIC_RELAXED ;
 unsigned int PROF_NCTX_LOCKS ;
 unsigned int atomic_fetch_add_u (int *,int,int ) ;
 int cum_gctxs ;
 int * gctx_locks ;

malloc_mutex_t *
prof_gctx_mutex_choose(void) {
 unsigned ngctxs = atomic_fetch_add_u(&cum_gctxs, 1, ATOMIC_RELAXED);

 return &gctx_locks[(ngctxs - 1) % PROF_NCTX_LOCKS];
}
