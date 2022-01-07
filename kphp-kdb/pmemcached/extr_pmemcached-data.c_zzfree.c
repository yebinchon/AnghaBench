
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_ZMALLOC_MEM ;
 int free (void*) ;
 int malloc_mem ;
 int zalloc_mem ;
 int zfree (void*,int) ;

void zzfree (void *ptr, int size) {
  if (size < 0) return;
  if (size < MAX_ZMALLOC_MEM) {
    zalloc_mem -= size;
    zfree (ptr, size);
  } else {
    malloc_mem -= size;
    free (ptr);
  }
}
