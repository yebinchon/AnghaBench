
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ dyn_cur ;
 scalar_t__ dyn_first ;
 scalar_t__ dyn_mark_bottom ;

void dyn_clear_low (void) {
  dyn_cur = dyn_mark_bottom ? dyn_mark_bottom : dyn_first;
}
