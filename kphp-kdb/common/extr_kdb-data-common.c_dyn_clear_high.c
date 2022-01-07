
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ dyn_last ;
 scalar_t__ dyn_mark_top ;
 scalar_t__ dyn_top ;

void dyn_clear_high (void) {
  dyn_top = dyn_mark_top ? dyn_mark_top : dyn_last;
}
