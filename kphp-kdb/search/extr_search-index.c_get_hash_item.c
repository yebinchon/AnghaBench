
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct item {int mask; int rates_len; scalar_t__* rates; } ;


 int assert (int) ;

__attribute__((used)) static long long get_hash_item (const struct item *I) {
  if ( (I->mask & 0xc000) == 0xc000) {
    assert (I->rates_len >= 2);



    return (((unsigned long long) I->rates[I->rates_len-1]) << 32) | ((unsigned int) I->rates[I->rates_len-2]);
  }
  assert ( ! (I->mask & 0xc000) );
  return 0LL;
}
