
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsdn_t ;
typedef int arena_t ;


 int CACHELINE ;
 int assert (int) ;
 void* large_palloc (int *,int *,size_t,int ,int) ;
 size_t sz_s2u (size_t) ;

void *
large_malloc(tsdn_t *tsdn, arena_t *arena, size_t usize, bool zero) {
 assert(usize == sz_s2u(usize));

 return large_palloc(tsdn, arena, usize, CACHELINE, zero);
}
