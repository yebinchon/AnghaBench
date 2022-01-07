
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct item {int rates_len; int extra; scalar_t__ mask; scalar_t__ rates; } ;


 int FLAG_DELETED ;
 int zfree (scalar_t__,int) ;

__attribute__((used)) static void delete_item_rates (struct item *I) {
  zfree (I->rates, I->rates_len * 4);
  I->rates = 0;
  I->rates_len = 0;
  I->mask = 0;
  I->extra |= FLAG_DELETED;
}
