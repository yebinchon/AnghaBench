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
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC6 (char const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,char const**) ; 

void FUNC7(void)
{
	const char *names[4] = { "repoattr", "rootattr", "missingattr", "subattr" };
	const char *values[4];

	FUNC5(FUNC6(values, g_repo, 0, "root_test1", 4, names));

	FUNC3(FUNC1(values[0]));
	FUNC3(FUNC1(values[1]));
	FUNC3(FUNC2(values[2]));
	FUNC3(FUNC2(values[3]));

	FUNC5(FUNC6(values, g_repo, 0, "root_test2", 4, names));

	FUNC3(FUNC1(values[0]));
	FUNC3(FUNC0(values[1]));
	FUNC3(FUNC2(values[2]));
	FUNC3(FUNC2(values[3]));

	FUNC5(FUNC6(values, g_repo, 0, "sub/subdir_test1", 4, names));

	FUNC3(FUNC1(values[0]));
	FUNC3(FUNC1(values[1]));
	FUNC3(FUNC2(values[2]));
	FUNC4("yes", values[3]);
}