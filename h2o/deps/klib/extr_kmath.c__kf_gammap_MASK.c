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
 double KF_GAMMA_EPS ; 
 double FUNC0 (double) ; 
 double FUNC1 (double) ; 
 double FUNC2 (double) ; 

__attribute__((used)) static double FUNC3(double s, double z)
{
	double sum, x;
	int k;
	for (k = 1, sum = x = 1.; k < 100; ++k) {
		sum += (x *= z / (s + k));
		if (x / sum < KF_GAMMA_EPS) break;
	}
	return FUNC0(s * FUNC2(z) - z - FUNC1(s + 1.) + FUNC2(sum));
}