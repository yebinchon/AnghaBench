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
	const char *names[5] = { "rootattr", "binary", "diff", "crlf", "frotz" };
	const char *names2[5] = { "mymacro", "positive", "negative", "rootattr", "another" };
	const char *names3[3] = { "macro2", "multi2", "multi3" };
	const char *values[5];

	g_repo = FUNC6("attr");

	FUNC5(FUNC7(values, g_repo, 0, "binfile", 5, names));

	FUNC3(FUNC1(values[0]));
	FUNC3(FUNC1(values[1]));
	FUNC3(FUNC0(values[2]));
	FUNC3(FUNC0(values[3]));
	FUNC3(FUNC2(values[4]));

	FUNC5(FUNC7(values, g_repo, 0, "macro_test", 5, names2));

	FUNC3(FUNC1(values[0]));
	FUNC3(FUNC1(values[1]));
	FUNC3(FUNC0(values[2]));
	FUNC3(FUNC2(values[3]));
	FUNC4("77", values[4]);

	FUNC5(FUNC7(values, g_repo, 0, "macro_test", 3, names3));

	FUNC3(FUNC1(values[0]));
	FUNC3(FUNC0(values[1]));
	FUNC4("answer", values[2]);
}