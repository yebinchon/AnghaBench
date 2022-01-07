
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (void*) ;
 int malloc_memory ;

void zzfree (void *ptr, int size) {
  malloc_memory -= size;
  free (ptr);
}
