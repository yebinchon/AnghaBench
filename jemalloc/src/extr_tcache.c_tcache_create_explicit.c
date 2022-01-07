
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsd_t ;
typedef int tcache_t ;


 size_t PTR_CEILING (size_t) ;
 int TSDN_NULL ;
 int arena_get (int ,int ,int) ;
 int arena_ichoose (int *,int *) ;
 int * ipallocztm (int ,size_t,size_t,int,int *,int,int ) ;
 size_t sz_sa2u (size_t,size_t) ;
 int tcache_arena_associate (int ,int *,int ) ;
 size_t tcache_bin_stack_alignment (size_t) ;
 int tcache_init (int *,int *,void*) ;
 scalar_t__ total_stack_bytes ;
 int tsd_tsdn (int *) ;

tcache_t *
tcache_create_explicit(tsd_t *tsd) {
 size_t size = sizeof(tcache_t);

 size = PTR_CEILING(size);
 size_t stack_offset = size;
 size += total_stack_bytes;
 size_t alignment = tcache_bin_stack_alignment(size);
 size = sz_sa2u(size, alignment);

 tcache_t *tcache = ipallocztm(tsd_tsdn(tsd), size, alignment, 1,
     ((void*)0), 1, arena_get(TSDN_NULL, 0, 1));
 if (tcache == ((void*)0)) {
  return ((void*)0);
 }

 void *avail_array = (void *)((uintptr_t)tcache +
     (uintptr_t)stack_offset);
 tcache_init(tsd, tcache, avail_array);
 tcache_arena_associate(tsd_tsdn(tsd), tcache, arena_ichoose(tsd, ((void*)0)));

 return tcache;
}
