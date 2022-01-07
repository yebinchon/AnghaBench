
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long dyn_cur ;
 long dyn_top ;

long dyn_free_bytes (void) {
  return dyn_top - dyn_cur;
}
