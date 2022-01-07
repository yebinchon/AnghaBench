
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_HASH_TABLE_SIZE ;
 int buffer_stack_size ;

int get_entry_cnt (void) {
  return MAX_HASH_TABLE_SIZE - buffer_stack_size;
}
