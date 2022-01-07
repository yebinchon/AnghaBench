
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; long long* rev; } ;
typedef TYPE_1__ lookup_table ;



long long ltbl_get_rev (lookup_table *table, int val) {
  if (val <= 0 || val >= table->size) {
    return 0;
  }

  return table->rev[val];
}
