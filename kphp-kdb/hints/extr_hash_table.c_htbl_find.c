
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int size; TYPE_2__** h; } ;
typedef TYPE_1__ hash_table ;
struct TYPE_5__ {long long key; struct TYPE_5__* next_entry; int data; } ;
typedef TYPE_2__ hash_entry ;
typedef int changes ;



changes *htbl_find (hash_table *table, long long key) {
  int i = (unsigned int)key % table->size;

  hash_entry *curr = table->h[i];
  while (curr != ((void*)0)) {
    if (curr->key == key) {
      return &(curr->data);
    }
    curr = curr->next_entry;
  }

  return ((void*)0);
}
