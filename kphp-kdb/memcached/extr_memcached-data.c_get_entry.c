
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {long long key_hash; int key_len; int next_entry; scalar_t__ exp_time; int key; } ;


 int CLOCK_MONOTONIC ;
 size_t GET_ENTRY_ID (long long) ;
 int del_entry (int) ;
 TYPE_1__* entry_buffer ;
 scalar_t__ get_utime (int ) ;
 int* hash_st ;
 scalar_t__ strncmp (char const*,int ,int) ;

int get_entry (const char *key, int key_len, long long hash) {
  int i = hash_st[GET_ENTRY_ID (hash)];

  while (i != -1 && (hash != entry_buffer[i].key_hash || key_len != entry_buffer[i].key_len ||
                     strncmp (key, entry_buffer[i].key, key_len) != 0)) {
    i = entry_buffer[i].next_entry;
  }

  if (i != -1 && entry_buffer[i].exp_time < get_utime (CLOCK_MONOTONIC)) {
    del_entry (i);
    i = -1;
  }

  return i;
}
