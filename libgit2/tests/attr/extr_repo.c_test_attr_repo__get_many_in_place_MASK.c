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
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC5 (char const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,char const**) ; 

void FUNC6(void)
{
	const char *vals[4] = { "repoattr", "rootattr", "missingattr", "subattr" };

	/* it should be legal to look up values into the same array that has
	 * the attribute names, overwriting each name as the value is found.
	 */

	FUNC4(FUNC5(vals, g_repo, 0, "sub/subdir_test1", 4, vals));

	FUNC2(FUNC0(vals[0]));
	FUNC2(FUNC0(vals[1]));
	FUNC2(FUNC1(vals[2]));
	FUNC3("yes", vals[3]);
}