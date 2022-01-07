
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* rates; int mask; } ;
typedef TYPE_1__ item_t ;


 int get_bitno (int ,int) ;

__attribute__((used)) static inline int get_rate_item_fast (const item_t *I, int p) {
  int i = get_bitno (I->mask, p);
  return i >= 0 ? I->rates[i] : 0;
}
