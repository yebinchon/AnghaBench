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
typedef  double (* kmin_f ) (int,double*,void*) ;

/* Variables and functions */
 double FUNC0 (double (*) (int,double*,void*),int,double*,void*,double,double*,int*) ; 
 scalar_t__ FUNC1 (int,int) ; 
 double FUNC2 (double) ; 
 int /*<<< orphan*/  FUNC3 (double*) ; 
 int /*<<< orphan*/  FUNC4 (double*,double*,int) ; 

double FUNC5(kmin_f func, int n, double *x, void *data, double r, double eps, int max_calls)
{
	double fx, fx1, *x1, *dx, radius;
	int k, n_calls = 0;
	x1 = (double*)FUNC1(n, sizeof(double));
	dx = (double*)FUNC1(n, sizeof(double));
	for (k = 0; k != n; ++k) { /* initial directions, based on MGJ */
		dx[k] = FUNC2(x[k]) * r;
		if (dx[k] == 0) dx[k] = r;
	}
	radius = r;
	fx1 = fx = func(n, x, data); ++n_calls;
	for (;;) {
		FUNC4(x1, x, n * sizeof(double)); /* x1 = x */
		fx1 = FUNC0(func, n, x1, data, fx, dx, &n_calls);
		while (fx1 < fx) {
			for (k = 0; k != n; ++k) {
				double t = x[k];
				dx[k] = x1[k] > x[k]? FUNC2(dx[k]) : 0.0 - FUNC2(dx[k]);
				x[k] = x1[k];
				x1[k] = x1[k] + x1[k] - t;
			}
			fx = fx1;
			if (n_calls >= max_calls) break;
			fx1 = func(n, x1, data); ++n_calls;
			fx1 = FUNC0(func, n, x1, data, fx1, dx, &n_calls);
			if (fx1 >= fx) break;
			for (k = 0; k != n; ++k)
				if (FUNC2(x1[k] - x[k]) > .5 * FUNC2(dx[k])) break;
			if (k == n) break;
		}
		if (radius >= eps) {
			if (n_calls >= max_calls) break;
			radius *= r;
			for (k = 0; k != n; ++k) dx[k] *= r;
		} else break; /* converge */
	}
	FUNC3(x1); FUNC3(dx);
	return fx1;
}