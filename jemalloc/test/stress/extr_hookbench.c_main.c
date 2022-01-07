
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (int ) ;
 int malloc_printf (char*,int) ;
 int mallocx (int,int ) ;
 int test_hooked (int) ;
 int test_unhooked (int) ;

int
main(void) {

 free(mallocx(1, 0));
 int iters = 10 * 1000 * 1000;
 malloc_printf("Benchmarking hooks with %d iterations:\n", iters);
 test_hooked(iters);
 test_unhooked(iters);
}
