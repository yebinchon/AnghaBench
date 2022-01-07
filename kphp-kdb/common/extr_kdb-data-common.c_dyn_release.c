
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void** dyn_mark_t ;


 void* dyn_cur ;
 void* dyn_mark_bottom ;
 void* dyn_mark_top ;
 void* dyn_top ;

void dyn_release (dyn_mark_t dyn_state) {
  dyn_cur = dyn_mark_bottom;
  dyn_top = dyn_mark_top;
  if (dyn_state) {
    dyn_mark_bottom = dyn_state[0];
    dyn_mark_top = dyn_state[1];
  } else {
    dyn_mark_bottom = dyn_mark_top = 0;
  }
}
