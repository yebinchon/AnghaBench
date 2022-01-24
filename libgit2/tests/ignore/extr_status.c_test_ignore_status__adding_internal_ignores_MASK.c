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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

void FUNC6(void)
{
	g_repo = FUNC2("empty_standard_repo");

	FUNC5("one.txt");
	FUNC5("two.bar");

	FUNC1(FUNC3(g_repo, "*.nomatch\n"));

	FUNC5("one.txt");
	FUNC5("two.bar");

	FUNC1(FUNC3(g_repo, "*.txt\n"));

	FUNC0("one.txt");
	FUNC5("two.bar");

	FUNC1(FUNC3(g_repo, "*.bar\n"));

	FUNC0("one.txt");
	FUNC0("two.bar");

	FUNC1(FUNC4(g_repo));

	FUNC5("one.txt");
	FUNC5("two.bar");

	FUNC1(FUNC3(
		g_repo, "multiple\n*.rules\n# comment line\n*.bar\n"));

	FUNC5("one.txt");
	FUNC0("two.bar");
}