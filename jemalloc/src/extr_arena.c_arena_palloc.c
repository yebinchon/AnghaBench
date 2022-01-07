
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsdn_t ;
typedef int tcache_t ;
typedef int arena_t ;


 size_t CACHELINE ;
 size_t PAGE ;
 size_t PAGE_MASK ;
 size_t SC_SMALL_MAXCLASS ;
 void* arena_malloc (int *,int *,size_t,int ,int,int *,int) ;
 void* large_malloc (int *,int *,size_t,int) ;
 void* large_palloc (int *,int *,size_t,size_t,int) ;
 scalar_t__ likely (int) ;
 int sz_size2index (size_t) ;

void *
arena_palloc(tsdn_t *tsdn, arena_t *arena, size_t usize, size_t alignment,
    bool zero, tcache_t *tcache) {
 void *ret;

 if (usize <= SC_SMALL_MAXCLASS
     && (alignment < PAGE
     || (alignment == PAGE && (usize & PAGE_MASK) == 0))) {

  ret = arena_malloc(tsdn, arena, usize, sz_size2index(usize),
      zero, tcache, 1);
 } else {
  if (likely(alignment <= CACHELINE)) {
   ret = large_malloc(tsdn, arena, usize, zero);
  } else {
   ret = large_palloc(tsdn, arena, usize, alignment, zero);
  }
 }
 return ret;
}
