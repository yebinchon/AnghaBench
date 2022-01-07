
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct item {int extra; int* rates; int mask; } ;


 int FLAG_DELETED ;
 int get_bitno (int ,int) ;

__attribute__((used)) static int get_rate_item (struct item *I, int p) {
  if (!I || (I->extra & FLAG_DELETED)) { return 0;}
  int i = get_bitno (I->mask, p);
  return i >= 0 ? I->rates[i] : 0;
}
