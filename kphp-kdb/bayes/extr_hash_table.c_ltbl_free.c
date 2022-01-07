
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int size; int currId; int * rev; int hash; int to; } ;
typedef TYPE_1__ lookup_table ;


 int htbl_free (int *) ;
 int ltbl_check (TYPE_1__*) ;
 int poly_h (int *,int) ;
 int qfree (int *,int) ;

void ltbl_free (lookup_table *table) {
  ltbl_check (table);
  htbl_free (&(table->to));
  qfree (table->rev, sizeof (int) * table->size);

  table->rev = ((void*)0);
  table->size = 0;
  table->currId = 1;
  table->hash = poly_h (table->rev, table->size);
}
