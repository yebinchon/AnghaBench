
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_ZALLOC ;
 int free (void*) ;
 int malloc_memory_used ;
 int total_memory_used ;
 int zalloc_memory_used ;
 int zfree (void*,int) ;

void zzfree (void *src, int size) {
  if (!src) { return; }
  total_memory_used -= size;
  if (size < MAX_ZALLOC) {
    zalloc_memory_used -= size;
    zfree (src, size);
  } else {
    malloc_memory_used -= size;
    free (src);
  }
}
