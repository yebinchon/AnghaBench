
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long max_allocated_data ;
 long max_loaded_index_data ;

void set_memory_limit (long max_memory) {
  max_loaded_index_data = max_memory >> 1;
  max_allocated_data = max_memory >> 1;
}
