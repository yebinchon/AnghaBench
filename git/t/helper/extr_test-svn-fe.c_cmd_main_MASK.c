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
 int FUNC0 (int,char const**) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  test_svnfe_usage ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

int FUNC7(int argc, const char **argv)
{
	if (argc == 2) {
		if (FUNC3(argv[1]))
			return 1;
		FUNC4(NULL, "refs/heads/master", "refs/notes/svn/revs");
		FUNC2();
		FUNC5();
		return 0;
	}

	if (argc >= 2 && !FUNC1(argv[1], "-d"))
		return FUNC0(argc, argv);
	FUNC6(test_svnfe_usage);
}