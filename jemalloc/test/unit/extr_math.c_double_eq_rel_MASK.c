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
 double FUNC0 (double) ; 

__attribute__((used)) static bool
FUNC1(double a, double b, double max_rel_err, double max_abs_err) {
	double rel_err;

	if (FUNC0(a - b) < max_abs_err) {
		return true;
	}
	rel_err = (FUNC0(b) > FUNC0(a)) ? FUNC0((a-b)/b) : FUNC0((a-b)/a);
	return (rel_err < max_rel_err);
}