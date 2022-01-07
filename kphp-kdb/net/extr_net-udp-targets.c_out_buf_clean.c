
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int out_buf_init ;
 int out_buf_next ;
 int out_buf_prev ;

int out_buf_clean (void) {
  return !out_buf_init && !out_buf_prev && !out_buf_next;
}
