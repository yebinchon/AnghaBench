
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int* buffer_stack ;
 size_t buffer_stack_size ;
 scalar_t__ free_LRU () ;

int get_new_entry (void) {
  if (buffer_stack_size == 0) {
    assert (free_LRU() == 0);
  }

  return buffer_stack[--buffer_stack_size];
}
