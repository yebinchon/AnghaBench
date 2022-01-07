
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_st ;
typedef int hash_st ;
typedef int entry_buffer ;
typedef int buffer_stack ;



long get_min_memory (void) {
  return (sizeof (entry_buffer) + sizeof (buffer_stack) + sizeof (hash_st) + sizeof (time_st)) / 1048576 + 1;
}
