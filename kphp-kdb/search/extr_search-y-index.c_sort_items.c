
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct item {int extra; int rates; int str; } ;


 int FLAG_DELETED ;
 int ITEMS_HASH_PRIME ;
 struct item** Items ;
 int assert (int) ;
 int del_items ;
 int fprintf (int ,char*,int,int) ;
 int qsort_i (int ,int) ;
 int stderr ;
 int tot_items ;
 int verbosity ;

void sort_items (void) {
  int i, j = 0;
  struct item *I;
  for (i = 0; i < ITEMS_HASH_PRIME; i++) {
    I = Items[i];
    if (I) {
      if (!(I->extra & FLAG_DELETED)) {
        Items[j++] = I;
      } else {
        assert (!I->str && !I->rates);
      }
    }
  }
  tot_items = j;
  if (verbosity >= 1) {
    fprintf (stderr, "found %d items. Deleted %d items.\n", tot_items, del_items);
  }
  del_items = 0;
  qsort_i (0, j-1);

}
