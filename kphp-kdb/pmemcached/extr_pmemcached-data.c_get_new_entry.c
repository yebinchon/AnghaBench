
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hash_entry_t ;


 int * zzmalloc (int) ;

hash_entry_t *get_new_entry (void) {
  return zzmalloc (sizeof (hash_entry_t));
}
