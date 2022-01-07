
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 uintptr_t ALIGNMENT_CEILING (uintptr_t,size_t) ;
 void* PAGE_ADDR2BASE (void*) ;
 int assert (int) ;
 size_t os_page ;
 void* os_pages_map (int *,size_t,size_t,int*) ;
 void* os_pages_trim (void*,size_t,size_t,size_t,int*) ;

__attribute__((used)) static void *
pages_map_slow(size_t size, size_t alignment, bool *commit) {
 size_t alloc_size = size + alignment - os_page;

 if (alloc_size < size) {
  return ((void*)0);
 }

 void *ret;
 do {
  void *pages = os_pages_map(((void*)0), alloc_size, alignment, commit);
  if (pages == ((void*)0)) {
   return ((void*)0);
  }
  size_t leadsize = ALIGNMENT_CEILING((uintptr_t)pages, alignment)
      - (uintptr_t)pages;
  ret = os_pages_trim(pages, alloc_size, leadsize, size, commit);
 } while (ret == ((void*)0));

 assert(ret != ((void*)0));
 assert(PAGE_ADDR2BASE(ret) == ret);
 return ret;
}
