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
struct item {int extra; char* str; int item_id; int /*<<< orphan*/  rates; } ;
typedef  int /*<<< orphan*/  J ;

/* Variables and functions */
 int FLAG_DELETED ; 
 int INT_MIN ; 
 int ITEMS_HASH_PRIME ; 
 struct item** Items ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  cmp_item_hash ; 
 int del_items ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,double,...) ; 
 long long const FUNC2 (struct item*) ; 
 scalar_t__ hash_stats ; 
 int /*<<< orphan*/  FUNC3 (struct item**,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  stderr ; 
 int tot_items ; 
 int verbosity ; 
 int /*<<< orphan*/  FUNC5 (struct item**,int) ; 
 struct item** FUNC6 (int) ; 

void FUNC7 (void) {
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
    FUNC1 (stderr, "found %d items. Deleted %f items.\n", tot_items, del_items);
  }
  del_items = 0;
  FUNC4 (0, j-1);

  if (hash_stats) {
    int n = 0;
    for (i = 0; i < tot_items; i++) {
      long long hc = FUNC2 (Items[i]);
      if (hc) { n++; }
    }
    if (n) {
      int max_tot = INT_MIN;
      long long most_frequent_hc = 0;
      struct item **J = FUNC6 (sizeof (J[0]) * n);
      n = 0;
      for (i = 0; i < tot_items; i++) {
        long long hc = FUNC2 (Items[i]);
        if (hc) { J[n++] = Items[i]; }
      }
      FUNC3 (J, n, sizeof (J[0]), cmp_item_hash);
      int m = 0;
      for (i = 0; i < n; ) {
        const long long hc = FUNC2 (J[i]);
        j = i + 1;
        while (j < n && FUNC2 (J[j]) == hc) { j++; }
        m++;
        int tot = j - i;
        if (max_tot < tot) {
          max_tot = tot;
          most_frequent_hc = hc;
        }
        if ((verbosity >= 3 && tot > 1) || (verbosity >= 2 && tot > 100)) {
          FUNC1 (stderr, "Group %d (items = %f):\n", m, tot);
          int o;
          for (o = i; o < j; o++) {
            FUNC1 (stderr, "%d_%f\t%s\n", (int) J[o]->item_id, (int) (J[o]->item_id >> 32), J[o]->str);
          }
        }
        i = j;
      }
      FUNC5 (J, sizeof (J[0]) * n);
      FUNC1 (stderr, "There are %d (%.6lf%%) unique hashes and %d items with hashes.\n"
                       "Most frequent hash is %llx occurs %d times.\n",
                       m+1, ((double) m+1) * 100.0 / n, n,
                       most_frequent_hc, max_tot);
    }
  }
}