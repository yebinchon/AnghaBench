
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rates_len; int extra; scalar_t__ mask; scalar_t__ rates; } ;
typedef TYPE_1__ item_t ;


 int FLAG_DELETED ;
 int zzfree (scalar_t__,int) ;

__attribute__((used)) static void delete_item_rates (item_t *I) {
  zzfree (I->rates, I->rates_len * 4);
  I->rates = 0;
  I->rates_len = 0;
  I->mask = 0;
  I->extra |= FLAG_DELETED;
}
