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
 int /*<<< orphan*/  FUNC0 (int,unsigned char**,int*,int) ; 

void FUNC1 (int *a, int n, int l, int r, unsigned char **res, int *skip) {
  if (n == 0) {
    return;
  }

  int c = n / 2;
  FUNC0 (l - a[c], res, skip, l - r);

  FUNC1 (a, c, l, a[c] - 1, res, skip);
  FUNC1 (a + c + 1, n - c - 1, a[c], r, res, skip);
}