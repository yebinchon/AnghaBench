
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long dl_get_memory_used () ;
 long static_memory ;

long get_memory_used (void) {
  return dl_get_memory_used() - static_memory;
}
