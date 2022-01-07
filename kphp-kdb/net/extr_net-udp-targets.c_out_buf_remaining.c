
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UDP_MAX_BODY_SIZE ;
 int out_buf_size ;

int out_buf_remaining (void) {
  return UDP_MAX_BODY_SIZE - out_buf_size;
}
