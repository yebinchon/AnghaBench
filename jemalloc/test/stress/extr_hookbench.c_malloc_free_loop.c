
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (void*) ;
 void* mallocx (int,int ) ;

__attribute__((used)) static void
malloc_free_loop(int iters) {
 for (int i = 0; i < iters; i++) {
  void *p = mallocx(1, 0);
  free(p);
 }
}
