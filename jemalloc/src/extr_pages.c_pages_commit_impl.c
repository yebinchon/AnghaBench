
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* MAP_FAILED ;
 int MAP_FIXED ;
 int MEM_COMMIT ;
 int MEM_DECOMMIT ;
 int PAGES_PROT_COMMIT ;
 int PAGES_PROT_DECOMMIT ;
 void* PAGE_ADDR2BASE (void*) ;
 size_t PAGE_CEILING (size_t) ;
 int PAGE_READWRITE ;
 void* VirtualAlloc (void*,size_t,int ,int ) ;
 int VirtualFree (void*,size_t,int ) ;
 int assert (int) ;
 void* mmap (void*,size_t,int,int,int,int ) ;
 int mmap_flags ;
 scalar_t__ os_overcommits ;
 int os_pages_unmap (void*,size_t) ;

__attribute__((used)) static bool
pages_commit_impl(void *addr, size_t size, bool commit) {
 assert(PAGE_ADDR2BASE(addr) == addr);
 assert(PAGE_CEILING(size) == size);

 if (os_overcommits) {
  return 1;
 }





 {
  int prot = commit ? PAGES_PROT_COMMIT : PAGES_PROT_DECOMMIT;
  void *result = mmap(addr, size, prot, mmap_flags | MAP_FIXED,
      -1, 0);
  if (result == MAP_FAILED) {
   return 1;
  }
  if (result != addr) {




   os_pages_unmap(result, size);
   return 1;
  }
  return 0;
 }

}
