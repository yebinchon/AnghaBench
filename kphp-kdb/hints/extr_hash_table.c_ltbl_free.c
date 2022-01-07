
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; int currId; int * rev; int to; } ;
typedef TYPE_1__ lookup_table ;


 int dl_free (int *,int) ;
 int htbl_no_free (int *) ;

void ltbl_free (lookup_table *table) {
  htbl_no_free (&(table->to));
  dl_free (table->rev, sizeof (long long) * table->size);

  table->rev = ((void*)0);
  table->size = 0;
  table->currId = 1;
}
