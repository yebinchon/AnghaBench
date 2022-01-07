
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsdn_t ;


 size_t arena_salloc (int *,void const*) ;

size_t
tcache_salloc(tsdn_t *tsdn, const void *ptr) {
 return arena_salloc(tsdn, ptr);
}
