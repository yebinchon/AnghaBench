
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int arena ;


 int MALLOCX_ARENA (unsigned int) ;
 int MALLOCX_TCACHE_NONE ;
 int REMOTE_NALLOC ;
 int assert_d_eq (int ,int ,char*) ;
 int mallctl (char*,void*,size_t*,int *,int ) ;
 void* mallocx (int,int) ;

__attribute__((used)) static void *
thd_producer(void *varg) {
 void **mem = varg;
 unsigned arena, i;
 size_t sz;

 sz = sizeof(arena);

 assert_d_eq(mallctl("arenas.create", (void *)&arena, &sz, ((void*)0), 0), 0,
     "Unexpected mallctl() failure");
 for (i = 0; i < REMOTE_NALLOC / 2; i++) {
  mem[i] = mallocx(1, MALLOCX_TCACHE_NONE | MALLOCX_ARENA(arena));
 }


 for (; i < REMOTE_NALLOC; i++) {
  mem[i] = mallocx(1, MALLOCX_TCACHE_NONE | MALLOCX_ARENA(0));
 }

 return ((void*)0);
}
