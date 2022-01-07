
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MADV_DODUMP ;
 void* PAGE_ADDR2BASE (void*) ;
 size_t PAGE_CEILING (size_t) ;
 int assert (int) ;
 scalar_t__ madvise (void*,size_t,int ) ;

bool
pages_dodump(void *addr, size_t size) {
 assert(PAGE_ADDR2BASE(addr) == addr);
 assert(PAGE_CEILING(size) == size);



 return 0;

}
