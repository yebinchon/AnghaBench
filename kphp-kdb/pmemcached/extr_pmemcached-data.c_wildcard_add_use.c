
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wildcard_entry {struct wildcard_entry* prev_use; struct wildcard_entry* next_use; } ;


 struct wildcard_entry wildcard_use ;

void wildcard_add_use (struct wildcard_entry *entry) {
  entry->prev_use = &wildcard_use;
  entry->next_use = wildcard_use.next_use;
  entry->prev_use->next_use = entry;
  entry->next_use->prev_use = entry;
}
