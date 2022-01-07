
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int size; TYPE_2__** h; int hash; } ;
typedef TYPE_1__ hash_table ;
typedef TYPE_2__* hash_entry_ptr ;
struct TYPE_9__ {struct TYPE_9__* next_entry; scalar_t__ data; } ;


 int htbl_check (TYPE_1__*) ;
 TYPE_2__* htbl_free_entries ;
 int poly_h (TYPE_2__**,int) ;
 int qfree (TYPE_2__**,int) ;

void htbl_free (hash_table *table) {
  htbl_check (table);
  if (table == ((void*)0)) {
    return;
  }

  int n = table->size, i;
  hash_entry_ptr *h = table->h;
  for (i = 0; i < n; i++) {
    hash_entry_ptr curr = h[i];
    if (curr != ((void*)0)) {
      while (curr->next_entry != ((void*)0)) {
        curr->data = 0;
        curr = curr->next_entry;
      }
      curr->data = 0;
      curr->next_entry = htbl_free_entries;
      htbl_free_entries = h[i];
      h[i] = ((void*)0);
    }
  }

  qfree (table->h, sizeof (hash_entry_ptr) * table->size);
  table->h = ((void*)0);
  table->size = 0;
  table->hash = poly_h (table->h, table->size);
}
