
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int size; TYPE_2__** h; } ;
typedef TYPE_1__ hash_table ;
struct TYPE_6__ {int key; int data; struct TYPE_6__* next_entry; } ;
typedef TYPE_2__ hash_entry ;


 TYPE_2__* htbl_free_entries ;

int htbl_del (hash_table *table, int key) {
  int i = (int)key % table->size, res = 0;
  if (i < 0) {
    i += table->size;
  }

  hash_entry **curr = &table->h[i];
  while ((*curr) != ((void*)0)) {
    if ((*curr)->key == key) {
      hash_entry *t = *curr;
      *curr = (*curr)->next_entry;
      res = t->data;
      t->data = 0;
      t->next_entry = htbl_free_entries;
      htbl_free_entries = t;

      return res;
    }
    curr = &(*curr)->next_entry;
  }

  return res;
}
