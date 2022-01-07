
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int size; TYPE_2__** h; } ;
typedef TYPE_1__ hash_table ;
struct TYPE_7__ {int key; int data; struct TYPE_7__* next_entry; } ;
typedef TYPE_2__ hash_entry ;


 int htbl_check (TYPE_1__*) ;
 TYPE_2__* htbl_get_entry () ;

int *htbl_find_or_create (hash_table *table, int key) {
  htbl_check (table);

  int i = (int)key % table->size;
  if (i<0) {
    i += table->size;
  }

  hash_entry *curr = table->h[i];
  while (curr != ((void*)0)) {
    if (curr->key == key) {
      return &(curr->data);
    }
    curr = curr->next_entry;
  }

  curr = htbl_get_entry();
  curr->key = key;
  curr->data = 0;
  curr->next_entry = table->h[i];
  table->h[i] = curr;

  return &(curr->data);
}
