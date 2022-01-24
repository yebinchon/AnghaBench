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
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pmc_refcount ; 
 int /*<<< orphan*/  pmc_reserve_mutex ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

int FUNC7(void)
{
	int err = 0;

	if (!FUNC1(&pmc_refcount)) {
		FUNC3(&pmc_reserve_mutex);
		if (FUNC2(&pmc_refcount) == 0) {
			if (!FUNC6())
				err = -EBUSY;
			else
				FUNC5();
		}
		if (!err)
			FUNC0(&pmc_refcount);
		FUNC4(&pmc_reserve_mutex);
	}

	return err;
}