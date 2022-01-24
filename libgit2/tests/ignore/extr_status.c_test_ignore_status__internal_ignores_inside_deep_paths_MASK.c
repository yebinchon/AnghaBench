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
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

void FUNC5(void)
{
	const char *add_me = "Debug\nthis/is/deep\npatterned*/dir\n";

	g_repo = FUNC2("empty_standard_repo");

	FUNC1(FUNC3(g_repo, add_me));

	FUNC0("Debug");
	FUNC0("and/Debug");
	FUNC0("really/Debug/this/file");
	FUNC0("Debug/what/I/say");

	FUNC4("and/NoDebug");
	FUNC4("NoDebug/this");
	FUNC4("please/NoDebug/this");

	FUNC0("this/is/deep");
	/* pattern containing slash gets FNM_PATHNAME so all slashes must match */
	FUNC4("and/this/is/deep");
	FUNC0("this/is/deep/too");
	/* pattern containing slash gets FNM_PATHNAME so all slashes must match */
	FUNC4("but/this/is/deep/and/ignored");

	FUNC4("this/is/not/deep");
	FUNC4("is/this/not/as/deep");
	FUNC4("this/is/deepish");
	FUNC4("xthis/is/deep");
}