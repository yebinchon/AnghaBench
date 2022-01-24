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
typedef  scalar_t__ rating ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 () ; 

rating FUNC2 (rating *a, int l, int r, int k) {
  FUNC0 (l <= k && k <= r);

  if (l == r) {
    return a[l];
  }

  rating c = a[l + FUNC1() % (r - l + 1)], t;
  int i = l, j = r;

  while (i <= j) {
    while (a[i] < c) {
      i++;
    }
    while (c < a[j]) {
      j--;
    }
    if (i <= j) {
      t = a[i];
      a[i] = a[j];
      a[j] = t;
      i++;
      j--;
    }
  }

  if (k <= j) {
    return FUNC2 (a, l, j, k);
  }
  return FUNC2 (a, j + 1, r, k);
}