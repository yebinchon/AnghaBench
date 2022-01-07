
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int to; } ;
typedef TYPE_1__ lookup_table ;
typedef scalar_t__ changes ;


 scalar_t__* htbl_find (int *,long long) ;

int ltbl_get_to (lookup_table *table, long long key) {
  changes *x = htbl_find (&(table->to), key);

  if (x != ((void*)0)) {

    return (long)(*x);
  }

  return 0;
}
