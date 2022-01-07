
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * dyn_mark_t ;


 int dyn_cur ;
 int dyn_mark_bottom ;
 int dyn_mark_top ;
 int dyn_top ;

void dyn_mark (dyn_mark_t dyn_state) {
  if (dyn_state) {
    dyn_state[0] = dyn_mark_bottom;
    dyn_state[1] = dyn_mark_top;
  }
  dyn_mark_bottom = dyn_cur;
  dyn_mark_top = dyn_top;
}
