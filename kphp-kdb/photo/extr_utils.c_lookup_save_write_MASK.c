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
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int*,int) ; 

int FUNC3 (int *x, int *y, int n, char *s, int sn) {
  char *st = s;

  FUNC1 (sn >= (int)sizeof (int));
  FUNC0 (s, n);
  sn -= sizeof (int);

  FUNC1 (sn >= (int)sizeof (int) * 2 * n);
  int d = sizeof (int) * n;
  FUNC2 (s, x, d);
  s += d;
  FUNC2 (s, y, d);
  s += d;

  return s - st;
}