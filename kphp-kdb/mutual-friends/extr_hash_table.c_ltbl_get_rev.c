
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ size; int currId; int* rev; } ;
typedef TYPE_1__ lookup_table ;


 int assert (int) ;
 int ltbl_check (TYPE_1__*) ;

int ltbl_get_rev (lookup_table *table, int val) {
  ltbl_check (table);
  assert (table->size > 0);

  if (val <= 0 || val >= table->currId) {
    return 0;
  }

  return table->rev[val];
}
