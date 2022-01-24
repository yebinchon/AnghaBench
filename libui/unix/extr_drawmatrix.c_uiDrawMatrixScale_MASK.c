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
typedef  int /*<<< orphan*/  uiDrawMatrix ;
typedef  int /*<<< orphan*/  cairo_matrix_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,double,double) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,double,double) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (double,double,double*,double*) ; 

void FUNC5(uiDrawMatrix *m, double xCenter, double yCenter, double x, double y)
{
	cairo_matrix_t c;
	double xt, yt;

	FUNC3(m, &c);
	xt = x;
	yt = y;
	FUNC4(xCenter, yCenter, &xt, &yt);
	FUNC2(&c, xt, yt);
	FUNC1(&c, x, y);
	FUNC2(&c, -xt, -yt);
	FUNC0(&c, m);
}