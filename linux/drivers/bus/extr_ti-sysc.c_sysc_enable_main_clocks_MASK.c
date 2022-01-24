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
struct sysc {struct clk** clocks; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct clk*) ; 
 int SYSC_OPTFCK0 ; 
 int /*<<< orphan*/  FUNC1 (struct clk*) ; 
 int FUNC2 (struct clk*) ; 

__attribute__((used)) static int FUNC3(struct sysc *ddata)
{
	struct clk *clock;
	int i, error;

	if (!ddata->clocks)
		return 0;

	for (i = 0; i < SYSC_OPTFCK0; i++) {
		clock = ddata->clocks[i];

		/* Main clocks may not have ick */
		if (FUNC0(clock))
			continue;

		error = FUNC2(clock);
		if (error)
			goto err_disable;
	}

	return 0;

err_disable:
	for (i--; i >= 0; i--) {
		clock = ddata->clocks[i];

		/* Main clocks may not have ick */
		if (FUNC0(clock))
			continue;

		FUNC1(clock);
	}

	return error;
}