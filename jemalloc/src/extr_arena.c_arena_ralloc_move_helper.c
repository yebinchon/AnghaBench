
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsdn_t ;
typedef int tcache_t ;
typedef int arena_t ;


 size_t SC_LARGE_MAXCLASS ;
 void* arena_malloc (int *,int *,size_t,int ,int,int *,int) ;
 void* ipalloct (int *,size_t,size_t,int,int *,int *) ;
 size_t sz_sa2u (size_t,size_t) ;
 int sz_size2index (size_t) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void *
arena_ralloc_move_helper(tsdn_t *tsdn, arena_t *arena, size_t usize,
    size_t alignment, bool zero, tcache_t *tcache) {
 if (alignment == 0) {
  return arena_malloc(tsdn, arena, usize, sz_size2index(usize),
      zero, tcache, 1);
 }
 usize = sz_sa2u(usize, alignment);
 if (unlikely(usize == 0 || usize > SC_LARGE_MAXCLASS)) {
  return ((void*)0);
 }
 return ipalloct(tsdn, usize, alignment, zero, tcache, arena);
}
