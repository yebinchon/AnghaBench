
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hash_entry ;


 int htbl_allocated_cnt ;

size_t htbl_get_memory (void) {
  return htbl_allocated_cnt * sizeof (hash_entry);
}
