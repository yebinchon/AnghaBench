
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int prev_used; int next_used; } ;
typedef TYPE_1__ hash_entry_t ;


 TYPE_1__* entry_buffer ;

void add_entry_used (int x) {
  int y = entry_buffer[0].prev_used;
  hash_entry_t *entry = &entry_buffer[x];

  entry->next_used = 0;
  entry_buffer[0].prev_used = x;

  entry->prev_used = y;
  entry_buffer[y].next_used = x;
}
