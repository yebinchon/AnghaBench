
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {long long key_hash; int next_entry; } ;


 size_t GET_ENTRY_ID (long long) ;
 TYPE_1__* entry_buffer ;
 int* hash_st ;

int get_entry_no_check (long long hash) {
  int i = hash_st[GET_ENTRY_ID (hash)];

  while (i != -1 && hash != entry_buffer[i].key_hash) {
    i = entry_buffer[i].next_entry;
  }

  return i;
}
