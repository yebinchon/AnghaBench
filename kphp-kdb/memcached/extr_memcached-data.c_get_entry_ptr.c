
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hash_entry_t ;


 int * entry_buffer ;

hash_entry_t *get_entry_ptr (int x) {
  return entry_buffer + x;
}
