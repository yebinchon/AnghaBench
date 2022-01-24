#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct item {long long item_id; } ;
typedef  int get_item_f_mode ;

/* Variables and functions */
#define  ADD_NOT_FOUND_ITEM 129 
 int ITEMS_HASH_PRIME ; 
 int /*<<< orphan*/  FUNC0 (struct item*) ; 
 struct item** Items ; 
 int /*<<< orphan*/  MAX_ITEMS ; 
#define  ONLY_FIND 128 
 int FUNC1 (long long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ items_short_ids ; 
 int /*<<< orphan*/  tot_freed_deleted_items ; 
 int /*<<< orphan*/  tot_items ; 
 int /*<<< orphan*/  FUNC3 (struct item*,int) ; 
 struct item* FUNC4 (int) ; 

__attribute__((used)) static struct item *FUNC5 (long long item_id, get_item_f_mode force) {
  int h1, h2;
  struct item *C, *D;
  if (item_id <= 0) { return 0; }
  if (items_short_ids) {
    h2 = FUNC1(item_id);
    h1 = h2 % ITEMS_HASH_PRIME;
    h2 = 1 + (h2 % (ITEMS_HASH_PRIME - 1));
  } else {
    h1 = item_id % ITEMS_HASH_PRIME;
    h2 = 1 + (item_id % (ITEMS_HASH_PRIME - 1));
  }

  switch (force) {
    case ONLY_FIND:
      while ((D = Items[h1]) != 0) {
        if (D->item_id == item_id) {
          return D;
        }
        h1 += h2;
        if (h1 >= ITEMS_HASH_PRIME) { h1 -= ITEMS_HASH_PRIME; }
      }
      return 0;
    case ADD_NOT_FOUND_ITEM:
      while ((D = Items[h1]) != 0) {
        if (FUNC0(D)) {
          break;
        }
        h1 += h2;
        if (h1 >= ITEMS_HASH_PRIME) { h1 -= ITEMS_HASH_PRIME; }
      }
    if (tot_items >= MAX_ITEMS) { return 0; }
    C = FUNC4 (sizeof (struct item));
    if (!C) { return C; }
    if (D) {
      FUNC3 (D, sizeof (struct item));
      tot_freed_deleted_items++;
    }
    else { tot_items++; }
    Items[h1] = C;
    C->item_id = item_id;
    return C;
  }
  FUNC2 (0);
  return 0;
}