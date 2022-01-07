
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dl_cur_stack () ;
 int stack_bottom_ptr ;

void dl_init_stack_size() {
  stack_bottom_ptr = dl_cur_stack();
}
