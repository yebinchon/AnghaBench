
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int size; TYPE_2__** h; } ;
typedef TYPE_1__ hash_table ;
typedef TYPE_2__* hash_entry_ptr ;
struct TYPE_7__ {struct TYPE_7__* next_entry; int data; } ;


 int chg_free (int *) ;
 int dl_free (TYPE_2__**,int) ;
 TYPE_2__* htbl_free_entries ;

void htbl_free (hash_table *table) {
  if (table == ((void*)0)) {
    return;
  }

  int n = table->size, i;
  hash_entry_ptr *h = table->h;
  for (i = 0; i < n; i++) {
    hash_entry_ptr curr = h[i];
    if (curr != ((void*)0)) {
      while (curr->next_entry != ((void*)0)) {
        chg_free (&curr->data);
        curr = curr->next_entry;
      }
      chg_free (&curr->data);
      curr->next_entry = htbl_free_entries;
      htbl_free_entries = h[i];
      h[i] = ((void*)0);
    }
  }

  dl_free (table->h, sizeof (hash_entry_ptr) * table->size);
  table->h = ((void*)0);
  table->size = 0;
}
