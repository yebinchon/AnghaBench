
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int out_buf_prev ;
 int out_buf_prev_last ;

void out_buf_set_prev (int prev) {
  assert (!out_buf_prev);
  out_buf_prev = prev;
  out_buf_prev_last = 1;
}
