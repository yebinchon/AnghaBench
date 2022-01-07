
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* HUGEPAGE_ADDR2BASE (void*) ;
 size_t HUGEPAGE_CEILING (size_t) ;
 int MADV_HUGEPAGE ;
 int assert (int) ;
 scalar_t__ madvise (void*,size_t,int ) ;

__attribute__((used)) static bool
pages_huge_impl(void *addr, size_t size, bool aligned) {
 if (aligned) {
  assert(HUGEPAGE_ADDR2BASE(addr) == addr);
  assert(HUGEPAGE_CEILING(size) == size);
 }



 return 1;

}
