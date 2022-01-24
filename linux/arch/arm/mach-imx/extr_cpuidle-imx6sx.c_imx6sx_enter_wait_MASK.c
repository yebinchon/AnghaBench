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
struct cpuidle_driver {int dummy; } ;
struct cpuidle_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  WAIT_CLOCKED ; 
 int /*<<< orphan*/  WAIT_UNCLOCKED ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  imx6sx_idle_finish ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  v7_cpu_resume ; 

__attribute__((used)) static int FUNC10(struct cpuidle_device *dev,
			    struct cpuidle_driver *drv, int index)
{
	FUNC7(WAIT_UNCLOCKED);

	switch (index) {
	case 1:
		FUNC2();
		break;
	case 2:
		FUNC6(true);
		FUNC8(true);
		FUNC9(0, v7_cpu_resume);
		/* Need to notify there is a cpu pm operation. */
		FUNC3();
		FUNC0();

		FUNC5(0, imx6sx_idle_finish);

		FUNC1();
		FUNC4();
		FUNC8(false);
		FUNC6(false);
		break;
	default:
		break;
	}

	FUNC7(WAIT_CLOCKED);

	return index;
}