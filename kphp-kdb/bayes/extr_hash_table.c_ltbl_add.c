
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int size; int currId; int* rev; int to; int hash; } ;
typedef TYPE_1__ lookup_table ;


 int assert (int) ;
 size_t* htbl_find_or_create (int *,int) ;
 int ltbl_check (TYPE_1__*) ;
 int ltbl_get_to (TYPE_1__*,int) ;
 int memset (int ,int ,int) ;
 int poly_h (int*,int) ;
 int* qrealloc (int*,int,int) ;

int ltbl_add (lookup_table *table, int key) {
  ltbl_check (table);

  assert (table->size > 0);

  int x;
  if ( (x = ltbl_get_to (table, key)) ) {
    return x;
  }

  if (table->currId >= table->size) {
    assert (table->currId == table->size);

    int len = table->size;

    table->size = table->currId * 2;
    table->rev = qrealloc (table->rev, sizeof (int) * table->size, sizeof (int) * len);
    assert (table->rev != ((void*)0));
    assert (0 < table->size && table->size < 100000000);
    table->hash = poly_h (table->rev, table->size);
    memset (table->rev + len, 0, sizeof (int) * (table->size - len));
  }
  assert (table->currId < table->size);

  assert (table->currId < table->size);

  table->rev[table->currId] = key;

  *(htbl_find_or_create (&(table->to), key)) = table->currId;

  return table->currId++;
}
