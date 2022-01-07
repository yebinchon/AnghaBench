
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct item {int item_id; int mask; int rates_len; int extra; int* rates; } ;


 int assert (int) ;
 int bread (int*,int) ;
 int popcount_short (int) ;
 int vkprintf (int,char*) ;
 int* zzmalloc (int) ;

int load_item (struct item *C) {
  vkprintf (4, "loading item...");

  bread (&C->item_id, 8);
  bread (&C->mask, 2);
  bread (&C->rates_len, 1);
  bread (&C->extra, 1);

  int sz = 4 * C->rates_len;
  C->rates = zzmalloc (sz);
  bread (C->rates, sz);

  assert (popcount_short (C->mask) == C->rates_len);
  return sz + 12;
}
