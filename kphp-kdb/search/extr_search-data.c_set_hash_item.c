
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int extra; int mask; unsigned int* rates; int rates_len; } ;
typedef TYPE_1__ item_t ;


 int FLAG_DELETED ;
 int assert (int) ;
 int vkprintf (int,char*,long long) ;
 void* zzrealloc (unsigned int*,int,int) ;

int set_hash_item (item_t *I, long long hc) {
  vkprintf (3, "set_hash_item : %016llx\n", hc);

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
  I->rates[I->rates_len-1] = (unsigned int) (hc >> 32);
  I->rates[I->rates_len-2] = (unsigned int) hc;
  return 1;
}
