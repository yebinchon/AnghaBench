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
typedef  int /*<<< orphan*/  uiDrawPath ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (double,double,double*,double*) ; 
 int /*<<< orphan*/  uiDrawFillModeWinding ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,double,double) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,double,double) ; 

__attribute__((used)) static uiDrawPath *FUNC6(double width, double height, int extend)
{
	uiDrawPath *path;
	double xs[10], ys[10];
	int i;

	FUNC0(width, height, xs, ys);

	path = FUNC1(uiDrawFillModeWinding);

	FUNC5(path, xs[0], ys[0]);
	for (i = 1; i < 10; i++)
		FUNC4(path, xs[i], ys[i]);

	if (extend) {
		FUNC4(path, width, height);
		FUNC4(path, 0, height);
		FUNC2(path);
	}

	FUNC3(path);
	return path;
}