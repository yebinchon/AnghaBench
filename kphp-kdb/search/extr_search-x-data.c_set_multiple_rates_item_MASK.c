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
struct item {int extra; int mask; int* rates; size_t rates_len; } ;

/* Variables and functions */
 int FLAG_DELETED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t FUNC1 (int) ; 
 int* FUNC2 (int*,int,int,int) ; 

__attribute__((used)) static int FUNC3 (struct item *I, int mask, int *rates) {
  if (!I || (I->extra & FLAG_DELETED)) { return 0; }
  int i = 0, j = 0, u = mask, deleted_mask = 0, x, new_mask;
  while (u) {
    if (rates[i]) {
      rates[j++] = rates[i];
      u &= u - 1;
    } else {
      u ^= x = u & -u;
      deleted_mask |= x;
    }
    i++;
  }
  mask &= ~deleted_mask;
  new_mask = (I->mask & (~deleted_mask)) | mask;
  if (new_mask != I->mask) {
    I->rates = FUNC2 (I->rates, I->mask, new_mask, sizeof (int));
    I->mask = new_mask;
  }
  i = 0;
  u = mask;
  while (u) {
    u ^= x = u & -u;
    I->rates[FUNC1 (new_mask & (x-1))] = rates[i++];
  }

  FUNC0 (i == j);
  I->rates_len = FUNC1 (I->mask);
  return 1;
}