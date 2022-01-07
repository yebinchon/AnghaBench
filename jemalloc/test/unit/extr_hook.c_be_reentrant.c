
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int alloc_free_size (int) ;
 int free (void*) ;
 void* mallocx (int,int ) ;
 void* rallocx (void*,int,int ) ;

__attribute__((used)) static void
be_reentrant() {

 alloc_free_size(1);
 alloc_free_size(1024);
 alloc_free_size(64 * 1024);
 alloc_free_size(256 * 1024);
 alloc_free_size(1024 * 1024);


 void *ptr = mallocx(129, 0);
 ptr = rallocx(ptr, 130, 0);
 free(ptr);

 ptr = mallocx(2 * 1024 * 1024, 0);
 free(ptr);
 ptr = mallocx(1 * 1024 * 1024, 0);
 ptr = rallocx(ptr, 2 * 1024 * 1024, 0);
 free(ptr);

 ptr = mallocx(1, 0);
 ptr = rallocx(ptr, 1000, 0);
 free(ptr);
}
