
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsd_t ;
typedef int tcache_t ;


 scalar_t__ TCACHE_GC_INCR_BYTES ;
 int assert (int) ;
 int tcache_event_hard (int *,int *) ;
 unsigned int tcache_gc_event_wait_get (int *) ;
 int * tcache_get (int *) ;
 int thread_tcache_gc_event_update (int *,scalar_t__) ;

__attribute__((used)) static void
thread_tcache_gc_event_handler(tsd_t *tsd) {
 assert(TCACHE_GC_INCR_BYTES > 0);
 assert(tcache_gc_event_wait_get(tsd) == 0U);
 thread_tcache_gc_event_update(tsd, TCACHE_GC_INCR_BYTES);
 tcache_t *tcache = tcache_get(tsd);
 if (tcache != ((void*)0)) {
  tcache_event_hard(tsd, tcache);
 }
}
