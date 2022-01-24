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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*) ; 

int FUNC5(int argc, const char **argv)
{
	if (argc < 2)
		return 1;

	FUNC3();

	if (!FUNC4(argv[1], "run-twice")) {
		FUNC1("1st\n");
		if (!FUNC2())
			return 1;
		FUNC1("2nd\n");
		if (!FUNC2())
			return 1;

		return 0;
	}

	FUNC0(stderr, "check usage\n");
	return 1;
}