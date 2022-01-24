#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int extra; int mask; unsigned int* rates; int rates_len; } ;
typedef  TYPE_1__ item_t ;

/* Variables and functions */
 int FLAG_DELETED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,long long) ; 
 void* FUNC2 (unsigned int*,int,int) ; 

int FUNC3 (item_t *I, long long hc) {
  FUNC1 (3, "set_hash_item : %016llx\n", hc);

  if (!I || (I->extra & FLAG_DELETED)) {
    return 0;
  }
  if ( (I->mask & 0xc000) != 0xc000) {
    FUNC0( ! (I->mask & 0xc000) );
    void *p = FUNC2 (I->rates, I->rates_len << 2, (I->rates_len + 2) << 2);
    if (p == 0) {
      return 0;
    }
    I->mask |= 0xc000;
    I->rates_len += 2;
    I->rates = p;
  }
  FUNC0 (I->rates_len >= 2);
  I->rates[I->rates_len-1] = (unsigned int) (hc >> 32);
  I->rates[I->rates_len-2] = (unsigned int) hc;
  return 1;
}