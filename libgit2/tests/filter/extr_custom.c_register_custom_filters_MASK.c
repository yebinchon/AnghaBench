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
 int /*<<< orphan*/  BITFLIP_FILTER_PRIORITY ; 
 int /*<<< orphan*/  GIT_FILTER_DRIVER_PRIORITY ; 
 int /*<<< orphan*/  REVERSE_FILTER_PRIORITY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(void)
{
	static int filters_registered = 0;

	if (!filters_registered) {
		FUNC0(FUNC4(
			"bitflip", FUNC1(), BITFLIP_FILTER_PRIORITY));

		FUNC0(FUNC4(
			"reverse", FUNC3("+reverse"),
			REVERSE_FILTER_PRIORITY));

		/* re-register reverse filter with standard filter=xyz priority */
		FUNC0(FUNC4(
			"pre-reverse",
			FUNC3("+prereverse"),
			GIT_FILTER_DRIVER_PRIORITY));

		FUNC0(FUNC4(
			"erroneous",
			FUNC2("+erroneous"),
			GIT_FILTER_DRIVER_PRIORITY));

		filters_registered = 1;
	}
}