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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 

int FUNC1(int mask, int i) {
  int tmp1, tmp2;
  FUNC0(i >= 0 && i < 32);
  while (i-- > 0) {
    mask &= mask-1;
  }
  FUNC0(mask);
  asm("bsf %1,%0\n\t"
        :   "=&q"(tmp1), "=&q"(tmp2)
        :   "1"(mask)
        :   "cc");
  return tmp1;
}