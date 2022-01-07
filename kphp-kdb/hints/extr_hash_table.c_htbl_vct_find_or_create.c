
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vector ;
struct TYPE_5__ {unsigned int size; TYPE_2__** h; } ;
typedef TYPE_1__ hash_table_vct ;
struct TYPE_6__ {long long key; int data; struct TYPE_6__* next_entry; } ;
typedef TYPE_2__ hash_entry_vct ;


 TYPE_2__* htbl_vct_get_entry () ;
 int vct_init (int *) ;

vector *htbl_vct_find_or_create (hash_table_vct *table, long long key) {
  int i = (unsigned int)key % table->size;

  hash_entry_vct *curr = table->h[i];
  while (curr != ((void*)0)) {
    if (curr->key == key) {
      return &(curr->data);
    }
    curr = curr->next_entry;
  }

  curr = htbl_vct_get_entry();
  curr->key = key;
  vct_init (&curr->data);
  curr->next_entry = table->h[i];
  table->h[i] = curr;

  return &(curr->data);
}
