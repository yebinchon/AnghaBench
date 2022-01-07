
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ R_cnt ;
 scalar_t__ R_tot ;
 int init_order () ;

void clear_res (void) {
  R_cnt = R_tot = 0;
  init_order ();
}
