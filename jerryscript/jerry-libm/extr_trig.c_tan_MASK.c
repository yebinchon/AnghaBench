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
 int FUNC0 (double) ; 
 int FUNC1 (double,double*) ; 
 double FUNC2 (double,double,int) ; 

double
FUNC3 (double x)
{
  double y[2], z = 0.0;
  int n, ix;

  /* High word of x. */
  ix = FUNC0 (x);

  /* |x| ~< pi/4 */
  ix &= 0x7fffffff;
  if (ix <= 0x3fe921fb)
  {
    return FUNC2 (x, z, 1);
  }

  /* tan(Inf or NaN) is NaN */
  else if (ix >= 0x7ff00000)
  {
    return x - x; /* NaN */
  }

  /* argument reduction needed */
  else
  {
    n = FUNC1 (x, y);
    return FUNC2 (y[0], y[1], 1 - ((n & 1) << 1)); /*   1 -- n even, -1 -- n odd */
  }
}