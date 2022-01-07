
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_ZMALLOC_MEM ;
 int free (void*) ;
 int malloc_mem ;
 int zfree (void*,int) ;

void zzfree (void *ptr, int size) {
  if (size < MAX_ZMALLOC_MEM) {
    zfree (ptr, size);
  } else {
    malloc_mem -= size;
    free (ptr);
  }
}
