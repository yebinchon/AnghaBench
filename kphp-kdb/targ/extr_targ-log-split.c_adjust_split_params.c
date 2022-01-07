
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int log_cur_pos () ;
 int split_par ;
 int split_quotient ;
 int split_shift ;

void adjust_split_params (void) {
  split_par = (split_shift + (log_cur_pos() >> 2)) % split_quotient;
  if (split_par < 0) {
    split_par = -split_par;
  }
}
