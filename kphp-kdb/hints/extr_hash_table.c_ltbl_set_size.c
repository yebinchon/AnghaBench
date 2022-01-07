
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; int rev; int to; } ;
typedef TYPE_1__ lookup_table ;


 int dl_malloc0 (int) ;
 int htbl_set_size (int *,int) ;

void ltbl_set_size (lookup_table *table, int size) {
  htbl_set_size (&(table->to), size);
  table->rev = dl_malloc0 (sizeof (long long) * size);
  table->size = size;
}
