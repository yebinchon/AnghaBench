
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t next_used; size_t prev_used; } ;
typedef TYPE_1__ hash_entry_t ;


 TYPE_1__* entry_buffer ;

void del_entry_used (int x) {
  hash_entry_t *entry = &entry_buffer[x];
  entry_buffer[entry->next_used].prev_used = entry->prev_used;
  entry_buffer[entry->prev_used].next_used = entry->next_used;
}
