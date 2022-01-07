
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long dyn_cur ;
 long dyn_first ;
 long malloc_mem ;

long get_memory_used (void) {
  return malloc_mem + (dyn_cur - dyn_first);
}
