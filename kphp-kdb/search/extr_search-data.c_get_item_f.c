
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {long long item_id; } ;
typedef TYPE_1__ item_t ;
typedef int get_item_f_mode ;



 int ITEMS_HASH_PRIME ;
 int ITEM_DELETED (TYPE_1__*) ;
 TYPE_1__** Items ;
 int MAX_ITEMS ;

 int SHORT_ID (long long) ;
 int assert (int ) ;
 scalar_t__ items_short_ids ;
 int tot_freed_deleted_items ;
 int tot_items ;
 int zzfree (TYPE_1__*,int) ;
 TYPE_1__* zzmalloc0 (int) ;

__attribute__((used)) static item_t *get_item_f (long long item_id, get_item_f_mode force) {
  int h1, h2;
  item_t *C, *D;
  if (item_id <= 0) { return 0; }
  if (items_short_ids) {
    h2 = SHORT_ID(item_id);
    h1 = h2 % ITEMS_HASH_PRIME;
    h2 = 1 + (h2 % (ITEMS_HASH_PRIME - 1));
  } else {
    h1 = item_id % ITEMS_HASH_PRIME;
    h2 = 1 + (item_id % (ITEMS_HASH_PRIME - 1));
  }

  switch (force) {
    case 128:
      while ((D = Items[h1]) != 0) {
        if (D->item_id == item_id) {
          return D;
        }
        h1 += h2;
        if (h1 >= ITEMS_HASH_PRIME) { h1 -= ITEMS_HASH_PRIME; }
      }
      return 0;
    case 129:
      while ((D = Items[h1]) != 0) {
        if (ITEM_DELETED(D)) {
          break;
        }
        h1 += h2;
        if (h1 >= ITEMS_HASH_PRIME) { h1 -= ITEMS_HASH_PRIME; }
      }
    if (tot_items >= MAX_ITEMS) { return 0; }
    C = zzmalloc0 (sizeof (item_t));
    if (!C) { return C; }
    if (D) {
      zzfree (D, sizeof (item_t));
      tot_freed_deleted_items++;
    }
    else { tot_items++; }
    Items[h1] = C;
    C->item_id = item_id;
    return C;
  }
  assert (0);
  return 0;
}
