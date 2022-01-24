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
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int,char const**) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

int FUNC5(int argc, const char **argv)
{
	if (argc < 2)
		FUNC0("too few arguments");

	if (!FUNC2(argv[1], "pack"))
		FUNC1(argc - 2, argv + 2);
	else if (!FUNC2(argv[1], "unpack"))
		FUNC3();
	else if (!FUNC2(argv[1], "unpack-sideband"))
		FUNC4();
	else
		FUNC0("invalid argument '%s'", argv[1]);

	return 0;
}