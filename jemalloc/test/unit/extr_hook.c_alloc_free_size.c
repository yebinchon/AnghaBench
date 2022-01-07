
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MALLOCX_TCACHE_NONE ;
 int dallocx (void*,int ) ;
 int free (void*) ;
 void* mallocx (int,int ) ;

__attribute__((used)) static void
alloc_free_size(size_t sz) {
 void *ptr = mallocx(1, 0);
 free(ptr);
 ptr = mallocx(1, 0);
 free(ptr);
 ptr = mallocx(1, MALLOCX_TCACHE_NONE);
 dallocx(ptr, MALLOCX_TCACHE_NONE);
}
