
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int currId; int size; long long* rev; int to; } ;
typedef TYPE_1__ lookup_table ;


 long long* dl_realloc (long long*,int,int) ;
 scalar_t__ htbl_find_or_create (int *,long long) ;
 int ltbl_get_to (TYPE_1__*,long long) ;
 int memset (int ,int ,int) ;

int ltbl_add (lookup_table *table, long long key) {
  int x;

  if ( (x = ltbl_get_to (table, key)) ) {
    return x;
  }

  if (table->currId >= table->size) {
    int len = table->size;

    table->size = table->currId * 2;

    table->rev = dl_realloc (table->rev, sizeof (long long) * table->size, sizeof (long long) * len);

    memset (table->rev + len, 0, sizeof (long long) * (table->size - len));
  }

  table->rev[table->currId] = key;

  *(long *)(htbl_find_or_create (&(table->to), key)) = table->currId;

  return table->currId++;
}
