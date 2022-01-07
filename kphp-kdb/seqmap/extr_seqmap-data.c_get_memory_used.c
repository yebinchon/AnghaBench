
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long long malloc_mem ;
 long long zalloc_mem ;

long long get_memory_used (void) {
  return zalloc_mem + malloc_mem;
}
