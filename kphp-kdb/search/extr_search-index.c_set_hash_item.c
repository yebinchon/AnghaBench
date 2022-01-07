
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct item {int extra; int mask; long long* rates; int rates_len; } ;


 int FLAG_DELETED ;
 int assert (int) ;
 void* zzrealloc (long long*,int,int) ;

int set_hash_item (struct item *I, long long hc) {
  if (!I || (I->extra & FLAG_DELETED)) {
    return 0;
  }
  if ( (I->mask & 0xc000) != 0xc000) {
    assert( ! (I->mask & 0xc000) );
    void *p = zzrealloc (I->rates, I->rates_len << 2, (I->rates_len + 2) << 2);
    if (p == 0) {
      return 0;
    }
    I->mask |= 0xc000;
    I->rates_len += 2;
    I->rates = p;
  }
  assert (I->rates_len >= 2);
  I->rates[I->rates_len-1] = hc >> 32;
  I->rates[I->rates_len-2] = (unsigned int) hc;
  return 1;
}
