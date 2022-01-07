
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct item {int* rates; int mask; } ;


 int get_bitno (int ,int) ;

__attribute__((used)) static inline int get_rate_item_fast (struct item *I, int p) {
  int i = get_bitno (I->mask, p);
  return i >= 0 ? I->rates[i] : 0;
}
