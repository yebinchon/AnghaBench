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
typedef  int /*<<< orphan*/  lookup ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,size_t) ; 
 int* FUNC1 (size_t) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int*,int*,int,int) ; 
 int FUNC4 (int*,int*,int,char*,int) ; 

int FUNC5 (lookup *l, char *buf, int sn, int none) {
  char *s = buf;

  int mx_n = FUNC2 (l);
  size_t xy_size = sizeof (int) * mx_n;
  int *x = FUNC1 (xy_size),
     *y = FUNC1 (xy_size);

  int n = FUNC3 (l, x, y, mx_n, none);

  int sdv = FUNC4 (x, y, n, s, sn);
  s += sdv;
  sn -= sdv;

  FUNC0 (x, xy_size);
  FUNC0 (y, xy_size);

  return s - buf;
}