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
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC7 (char const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,char const**) ; 

void FUNC8(void)
{
	const char *names[6] = { "rootattr", "positive", "negative",
		"firstmacro", "secondmacro", "thirdmacro" };
	const char *values[6];

	g_repo = FUNC6("attr");

	FUNC5(FUNC7(values, g_repo, 0, "macro_bad", 6, names));

	/* these three just confirm that the "mymacro" rule ran */
	FUNC3(FUNC2(values[0]));
	FUNC3(FUNC1(values[1]));
	FUNC3(FUNC0(values[2]));

	/* file contains:
	 *     # let's try some malicious macro defs
	 *     [attr]firstmacro -thirdmacro -secondmacro
	 *     [attr]secondmacro firstmacro -firstmacro
	 *     [attr]thirdmacro secondmacro=hahaha -firstmacro
	 *     macro_bad firstmacro secondmacro thirdmacro
	 *
	 * firstmacro assignment list ends up with:
	 *     -thirdmacro -secondmacro
	 * secondmacro assignment list expands "firstmacro" and ends up with:
	 *     -thirdmacro -secondmacro -firstmacro
	 * thirdmacro assignment don't expand so list ends up with:
	 *     secondmacro="hahaha"
	 *
	 * macro_bad assignment list ends up with:
	 *     -thirdmacro -secondmacro firstmacro &&
	 *     -thirdmacro -secondmacro -firstmacro secondmacro &&
	 *     secondmacro="hahaha" thirdmacro
	 *
	 * so summary results should be:
	 *     -firstmacro secondmacro="hahaha" thirdmacro
	 */
	FUNC3(FUNC0(values[3]));
	FUNC4("hahaha", values[4]);
	FUNC3(FUNC1(values[5]));
}