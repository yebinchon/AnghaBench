
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (void*) ;
 void* malloc (int) ;
 int malloc_memory ;

void *zzmalloc (int size) {
  malloc_memory += size;
  void *r = malloc (size);
  assert (r);
  return r;
}
