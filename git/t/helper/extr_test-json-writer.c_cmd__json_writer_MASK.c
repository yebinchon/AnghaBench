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
 int pretty ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 
 int FUNC2 () ; 

int FUNC3(int argc, const char **argv)
{
	argc--; /* skip over "json-writer" arg */
	argv++;

	if (argc > 0 && argv[0][0] == '-') {
		if (!FUNC1(argv[0], "-u") || !FUNC1(argv[0], "--unit"))
			return FUNC2();

		if (!FUNC1(argv[0], "-p") || !FUNC1(argv[0], "--pretty"))
			pretty = 1;
	}

	return FUNC0();
}