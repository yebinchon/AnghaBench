
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct item {long long item_id; scalar_t__ str; scalar_t__ len; scalar_t__ extra; scalar_t__ rates; scalar_t__ rates_len; scalar_t__ mask; } ;



__attribute__((used)) static int create_item (struct item *C, long long item_id) {
  C->item_id = item_id;
  C->mask = 0;
  C->rates_len = 0;
  C->rates = 0;
  C->extra = 0;
  C->len = 0;
  C->str = 0;
  return 1;
}
