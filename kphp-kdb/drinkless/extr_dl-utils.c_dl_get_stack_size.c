
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ dl_cur_stack () ;
 scalar_t__ stack_bottom_ptr ;

size_t dl_get_stack_size() {
  size_t res = (char *)dl_cur_stack() - (char *)stack_bottom_ptr;
  return -res;
}
