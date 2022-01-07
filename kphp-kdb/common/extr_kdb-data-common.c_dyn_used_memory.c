
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long dyn_cur ;
 long dyn_first ;
 int dyn_update_stats () ;
 long freed_bytes ;

long dyn_used_memory (void) {
  dyn_update_stats();
  return (dyn_cur - dyn_first) - freed_bytes;
}
