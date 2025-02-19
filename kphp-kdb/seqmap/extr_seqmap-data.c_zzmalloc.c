
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_ZMALLOC_MEM ;
 int PTRSIZE ;
 int assert (void*) ;
 void* dyn_alloc (int,int ) ;
 int fprintf (int ,char*,...) ;
 scalar_t__ get_memory_used () ;
 void* malloc (int) ;
 int malloc_mem ;
 scalar_t__ max_memory ;
 int stderr ;
 int zalloc_mem ;

void *zzmalloc (int size) {
  if (size < 0) { return 0; }
  void *res;

  if (get_memory_used () > max_memory) {
    fprintf (stderr, "too much memory used: %lld of %lld\n", (long long) get_memory_used (), (long long) max_memory);

  }
  assert (get_memory_used () <= max_memory);

  if (size < MAX_ZMALLOC_MEM) {
    if (!(res = dyn_alloc (size, PTRSIZE))) {
      fprintf (stderr, "Out of memory\n");
    }
    assert (res);
    zalloc_mem += size;
  } else {
    if (!(res = malloc (size))) {
      fprintf (stderr, "Out of memory\n");
    }
    assert (res);
    malloc_mem += size;
  }

  assert(res);
  return res;
}
