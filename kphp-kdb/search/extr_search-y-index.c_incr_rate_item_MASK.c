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
struct item {int extra; int mask; int* rates; int /*<<< orphan*/  rates_len; } ;

/* Variables and functions */
 int FLAG_DELETED ; 
 size_t FUNC0 (int,int) ; 
 int* FUNC1 (int*,int,int,int) ; 

__attribute__((used)) static int FUNC2 (struct item *I, int n, int rate) {
  if (!I || (I->extra & FLAG_DELETED)) {
    return 0;
  }
  if ((I->mask & (1 << n)) == 0) {
    I->rates = FUNC1 (I->rates, I->mask, I->mask | (1 << n), 4);
    I->mask |= (1 << n);
    I->rates_len++;
  }
  I->rates [FUNC0 (I->mask, n)] += rate;
  return 1;
}