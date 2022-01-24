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
 scalar_t__ KF_GAMMA_EPS ; 
 double KF_TINY ; 
 double FUNC0 (double) ; 
 scalar_t__ FUNC1 (double) ; 
 double FUNC2 (double) ; 
 double FUNC3 (double) ; 

__attribute__((used)) static double FUNC4(double s, double z)
{
	int j;
	double C, D, f;
	f = 1. + z - s; C = f; D = 0.;
	// Modified Lentz's algorithm for computing continued fraction
	// See Numerical Recipes in C, 2nd edition, section 5.2
	for (j = 1; j < 100; ++j) {
		double a = j * (s - j), b = (j<<1) + 1 + z - s, d;
		D = b + a * D;
		if (D < KF_TINY) D = KF_TINY;
		C = b + a / C;
		if (C < KF_TINY) C = KF_TINY;
		D = 1. / D;
		d = C * D;
		f *= d;
		if (FUNC1(d - 1.) < KF_GAMMA_EPS) break;
	}
	return FUNC0(s * FUNC3(z) - z - FUNC2(s) - FUNC3(f));
}