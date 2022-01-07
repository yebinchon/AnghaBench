
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_ZALLOC ;
 void* malloc (int) ;
 int malloc_memory_used ;
 int total_memory_used ;
 int zalloc_memory_used ;
 void* zmalloc (int) ;

void *zzmalloc (int size) {
  total_memory_used += size;
  if (size < MAX_ZALLOC) {
    zalloc_memory_used += size;
    return zmalloc (size);
  } else {
    malloc_memory_used += size;
    return malloc (size);
  }
}
