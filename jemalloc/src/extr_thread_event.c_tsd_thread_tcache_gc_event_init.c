
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsd_t ;


 scalar_t__ TCACHE_GC_INCR_BYTES ;
 int assert (int) ;
 int thread_tcache_gc_event_update (int *,scalar_t__) ;

__attribute__((used)) static void
tsd_thread_tcache_gc_event_init(tsd_t *tsd) {
 assert(TCACHE_GC_INCR_BYTES > 0);
 thread_tcache_gc_event_update(tsd, TCACHE_GC_INCR_BYTES);
}
