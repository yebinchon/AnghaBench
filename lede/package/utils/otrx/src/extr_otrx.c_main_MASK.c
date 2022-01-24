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
 int FUNC0 (int,char**) ; 
 int FUNC1 (int,char**) ; 
 int FUNC2 (int,char**) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 

int FUNC5(int argc, char **argv) {
	if (argc > 1) {
		if (!FUNC3(argv[1], "check"))
			return FUNC0(argc, argv);
		else if (!FUNC3(argv[1], "create"))
			return FUNC1(argc, argv);
		else if (!FUNC3(argv[1], "extract"))
			return FUNC2(argc, argv);
	}

	FUNC4();
	return 0;
}