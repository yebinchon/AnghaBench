
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_ZMALLOC_MEM ;
 int PTRSIZE ;
 int assert (void*) ;
 void* dyn_alloc (int,int ) ;
 scalar_t__ free_LRU () ;
 scalar_t__ get_memory_used () ;
 void* malloc (int) ;
 int malloc_mem ;
 scalar_t__ max_memory ;

void *zzmalloc (int size) {
  void *res;

  while (get_memory_used() > max_memory && free_LRU() == 0) {
  }

  assert (get_memory_used() <= max_memory);

  if (size < MAX_ZMALLOC_MEM)
  {
    while (!(res = dyn_alloc (size, PTRSIZE)) && free_LRU() == 0) {
    }
  } else {
    while (!(res = malloc (size)) && free_LRU() == 0) {
    }
    malloc_mem += size;
  }

  assert (res);
  return res;
}
