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
 int /*<<< orphan*/  KMIN_EPS ; 
 int /*<<< orphan*/  KMIN_MAXCALL ; 
 int /*<<< orphan*/  KMIN_RADIUS ; 
 int /*<<< orphan*/  f_Chebyquad ; 
 double FUNC0 (int /*<<< orphan*/ ,int,double*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ n_evals ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

int FUNC2()
{
	double x[20], y;
	int n, i;
	FUNC1("\nMinimizer: Hooke-Jeeves\n");
	for (n = 2; n <= 8; n += 2) {
		for (i = 0; i != n; ++i) x[i] = (double)(i + 1) / n;
		n_evals = 0;
		y = FUNC0(f_Chebyquad, n, x, 0, KMIN_RADIUS, KMIN_EPS, KMIN_MAXCALL);
		FUNC1("n=%d,min=%.8lg,n_evals=%d\n", n, y, n_evals);
	}
	FUNC1("\n");
	return 0;
}