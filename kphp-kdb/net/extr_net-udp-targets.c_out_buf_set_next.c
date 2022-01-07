
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int out_buf_next ;
 int out_buf_next_last ;

void out_buf_set_next (int next) {
  assert (!out_buf_next);
  out_buf_next = next;
  out_buf_next_last = 1;
}
