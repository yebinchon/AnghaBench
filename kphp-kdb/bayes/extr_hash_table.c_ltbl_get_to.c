
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ size; int to; } ;
typedef TYPE_1__ lookup_table ;


 int assert (int) ;
 int* htbl_find (int *,int) ;
 int ltbl_check (TYPE_1__*) ;

int ltbl_get_to (lookup_table *table, int key) {
  ltbl_check (table);
  assert (table->size > 0);

  int *x = htbl_find (&(table->to), key);

  if (x != ((void*)0)) {
    return *x;
  }

  return 0;
}
