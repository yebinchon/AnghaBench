#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct item {int extra; int mask; long long* rates; int rates_len; } ;

/* Variables and functions */
 int FLAG_DELETED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (long long*,int,int) ; 

int FUNC2 (struct item *I, long long hc) {
  if (!I || (I->extra & FLAG_DELETED)) {
    return 0;
  }
  if ( (I->mask & 0xc000) != 0xc000) {
    FUNC0( ! (I->mask & 0xc000) );
    void *p = FUNC1 (I->rates, I->rates_len << 2, (I->rates_len + 2) << 2);
    if (p == 0) {
      return 0;
    }
    I->mask |= 0xc000;
    I->rates_len += 2;
    I->rates = p;
  }
  FUNC0 (I->rates_len >= 2);
  I->rates[I->rates_len-1] = hc >> 32;
  I->rates[I->rates_len-2] = (unsigned int) hc;
  return 1;
}