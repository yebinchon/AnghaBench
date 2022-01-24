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
struct item {int extra; int /*<<< orphan*/  rates; int /*<<< orphan*/  str; } ;

/* Variables and functions */
 int FLAG_DELETED ; 
 int ITEMS_HASH_PRIME ; 
 struct item** Items ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int del_items ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  stderr ; 
 int tot_items ; 
 int verbosity ; 

void FUNC3 (void) {
  int i, j = 0;
  struct item *I;
  for (i = 0; i < ITEMS_HASH_PRIME; i++) {
    I = Items[i];
    if (I) {
      if (!(I->extra & FLAG_DELETED)) {
        Items[j++] = I;
      } else {
        FUNC0 (!I->str && !I->rates);
      }
    }
  }
  tot_items = j;
  if (verbosity >= 1) {
    FUNC1 (stderr, "found %d items. Deleted %d items.\n", tot_items, del_items);
  }
  del_items = 0;
  FUNC2 (0, j-1);

}