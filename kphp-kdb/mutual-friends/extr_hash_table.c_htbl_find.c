
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


 int htbl_check (TYPE_1__*) ;

int *htbl_find (hash_table *table, int key) {
  htbl_check (table);

  int i = (int)key % table->size;
  if (i < 0) {
    i += table->size;
  }

  hash_entry *curr = table->h[i];
  while (curr != ((void*)0)) {
    if (curr->key == key) {
      return &(curr->data);
    }
    curr = curr->next_entry;
  }

  return ((void*)0);
}
