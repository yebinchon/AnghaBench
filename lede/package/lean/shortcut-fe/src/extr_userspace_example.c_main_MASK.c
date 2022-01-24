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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

int FUNC6(int argc, char *argv[])
{
	if (FUNC2() < 0) {
		FUNC5("Unable to init generic netlink\n");
		FUNC0(1);
	}

	FUNC3('a', 0, 0, 0, 0);

	/* this never returns */
	FUNC4();

	FUNC1();

	return 0;
}