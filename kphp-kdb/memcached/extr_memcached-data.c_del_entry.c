
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int next_entry; int key_hash; scalar_t__ data_len; int data; scalar_t__ key_len; int key; } ;
typedef TYPE_1__ hash_entry_t ;


 size_t GET_ENTRY_ID (int ) ;
 int assert (int) ;
 int* buffer_stack ;
 int buffer_stack_size ;
 int del_entry_time (int) ;
 int del_entry_used (int) ;
 TYPE_1__* entry_buffer ;
 int* hash_st ;
 int zzfree (int ,scalar_t__) ;

void del_entry (int x) {
  hash_entry_t *entry = &entry_buffer[x];

  del_entry_used (x);
  del_entry_time (x);

  zzfree (entry->key, entry->key_len + 1);
  zzfree (entry->data, entry->data_len + 1);

  int *i = &hash_st[GET_ENTRY_ID (entry->key_hash)];

  while (*i != x && *i != -1) {
    i = &(entry_buffer[*i].next_entry);
  }

  assert (*i == x);

  *i = entry->next_entry;

  buffer_stack[buffer_stack_size++] = x;
}
