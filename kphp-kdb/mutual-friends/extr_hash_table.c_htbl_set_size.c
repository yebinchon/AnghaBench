
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; int * h; int hash; } ;
typedef TYPE_1__ hash_table ;
typedef int hash_entry ;


 int assert (int) ;
 int poly_h (int *,int) ;
 int * qmalloc0 (int) ;

void htbl_set_size (hash_table *table, int size) {
  assert (size > 0);
  assert (table->h == ((void*)0));

  table->h = qmalloc0 (sizeof (hash_entry *) * size);
  assert (table->h != ((void*)0));

  table->size = size;
  table->hash = poly_h (table->h, table->size);
}
