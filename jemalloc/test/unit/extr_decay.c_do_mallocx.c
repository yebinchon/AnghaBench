
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_ptr_not_null (void*,char*) ;
 void* mallocx (size_t,int) ;

__attribute__((used)) static void *
do_mallocx(size_t size, int flags) {
 void *p = mallocx(size, flags);
 assert_ptr_not_null(p, "Unexpected mallocx() failure");
 return p;
}
