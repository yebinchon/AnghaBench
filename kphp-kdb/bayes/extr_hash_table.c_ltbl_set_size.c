
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; int rev; int hash; int to; } ;
typedef TYPE_1__ lookup_table ;


 int htbl_set_size (int *,int) ;
 int poly_h (int ,int) ;
 int qmalloc0 (int) ;

void ltbl_set_size (lookup_table *table, int size) {
  htbl_set_size (&(table->to), size);
  table->rev = qmalloc0 (sizeof (int) * size);
  table->size = size;
  table->hash = poly_h (table->rev, table->size);
}
