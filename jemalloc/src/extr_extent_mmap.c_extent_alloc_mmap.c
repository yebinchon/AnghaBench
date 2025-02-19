
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t ALIGNMENT_CEILING (size_t,int ) ;
 int PAGE ;
 int assert (int) ;
 void* pages_map (void*,size_t,size_t,int*) ;

void *
extent_alloc_mmap(void *new_addr, size_t size, size_t alignment, bool *zero,
    bool *commit) {
 assert(alignment == ALIGNMENT_CEILING(alignment, PAGE));
 void *ret = pages_map(new_addr, size, alignment, commit);
 if (ret == ((void*)0)) {
  return ((void*)0);
 }
 assert(ret != ((void*)0));
 if (*commit) {
  *zero = 1;
 }
 return ret;
}
