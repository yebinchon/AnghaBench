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
typedef  int /*<<< orphan*/ * golomb ;

/* Variables and functions */
 scalar_t__ cur_bit ; 
 int /*<<< orphan*/  FUNC0 () ; 

int FUNC1 (golomb ptr, int tot_items, int len) {
  if (ptr == NULL) {
    return 0;
  }

  int k = -1, p = 1;
  while (p < tot_items) {
    p += p;
    k++;
  }

  int m = ((int) *ptr++ << 24) + (1 << 23);

  int tmp = 0;
  while (k >= 0) {
    if (cur_bit) { tmp += (1 << k); }
    FUNC0 ();
    k--;
  }

  return tmp + 1;
}