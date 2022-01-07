
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_item {int item_id; int mask; int rates_len; int extra; int* rates; } ;


 int assert (int) ;
 int bread (int*,int) ;
 int idx_items_with_hash ;
 scalar_t__ popcount_short (int) ;
 int vkprintf (int,char*) ;
 int* zmalloc (int) ;

int load_item (struct index_item *C) {
  vkprintf (5, "loading item...");
  bread (&C->item_id, 8);

  bread (&C->mask, 2);
  bread (&C->rates_len, 1);
  bread (&C->extra, 1);
  int sz = ((int) C->rates_len) * sizeof (int);
  C->rates = zmalloc (sz);
  bread (C->rates, sz);
  assert (popcount_short (C->mask) == C->rates_len);
  if (C->mask & 0xc000) {
    idx_items_with_hash++;
  }
  return sz + 12;
}
