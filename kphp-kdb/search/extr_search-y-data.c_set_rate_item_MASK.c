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
struct TYPE_3__ {int extra; int mask; int* rates; int /*<<< orphan*/  rates_len; } ;
typedef  TYPE_1__ item_t ;

/* Variables and functions */
 int FLAG_DELETED ; 
 size_t FUNC0 (int,int) ; 
 void* FUNC1 (int*,int,int,int) ; 

__attribute__((used)) static int FUNC2 (item_t *I, int p, int rate) {
  if (!I || (I->extra & FLAG_DELETED)) { return 0; }

  if (!rate) {
    /* memory optimization: don't store zero rates into heap memory */
    if (I->mask & (1 << p)) {
      I->rates = FUNC1 (I->rates, I->mask, I->mask ^ (1 << p), sizeof (int));
      I->mask ^= (1 << p);
      I->rates_len--;
    }
    return 1;
  }

  if ((I->mask & (1 << p)) == 0) {
    I->rates = FUNC1 (I->rates, I->mask, I->mask | (1 << p), sizeof (int));
    I->mask |= (1 << p);
    I->rates_len++;
  }
  I->rates[FUNC0 (I->mask, p)] = rate;
  return 1;
}