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
 int /*<<< orphan*/  SCU_PM_NORMAL ; 
 int /*<<< orphan*/  SCU_PM_POWEROFF ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (unsigned long,int (*) (unsigned long)) ; 
 int /*<<< orphan*/  scu_base ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(unsigned int state, int (*fn)(unsigned long),
			  unsigned long args)
{
	int ret = 0;

	FUNC2();
	FUNC4(scu_base, SCU_PM_POWEROFF);
	ret = FUNC3(args, fn);
	FUNC4(scu_base, SCU_PM_NORMAL);

	if (!FUNC0())
		FUNC1();

	return ret;
}