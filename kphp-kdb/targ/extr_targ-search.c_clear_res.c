
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ R_cnt ;
 int R_position ;
 scalar_t__ R_tot ;
 int postprocess_res ;
 int postprocess_res_std ;
 int store_res ;
 int store_res_std ;

void clear_res (void) {
  R_cnt = R_tot = 0;
  if (R_position != (-1 << 31)) {
    store_res = store_res_std;
    postprocess_res = postprocess_res_std;
  }
}
