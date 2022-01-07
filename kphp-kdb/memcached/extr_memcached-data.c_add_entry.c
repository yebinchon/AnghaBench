
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int next_entry; int key_hash; } ;


 int GET_ENTRY_ID (int ) ;
 TYPE_1__* entry_buffer ;
 int* hash_st ;

void add_entry (int x) {
  int i = GET_ENTRY_ID (entry_buffer[x].key_hash);

  entry_buffer[x].next_entry = hash_st[i];
  hash_st[i] = x;
}
