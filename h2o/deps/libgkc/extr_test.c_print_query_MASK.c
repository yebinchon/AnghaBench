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
struct gkc_summary {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,double,double) ; 
 double FUNC1 (struct gkc_summary*,double) ; 
 int /*<<< orphan*/  stderr ; 

void FUNC2(struct gkc_summary *s, double q)
{
	double v = FUNC1(s, q);
	FUNC0(stderr, "queried: %.02f, found: %.02f\n", q, v);
}