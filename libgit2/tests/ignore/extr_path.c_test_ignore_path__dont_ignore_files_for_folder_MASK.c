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
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

void FUNC7(void)
{
	FUNC2("attr/.gitignore");

	FUNC1("attr/dir/.gitignore", "test/\n");

	/* Create "test" as a file; ensure it is not ignored. */
	FUNC1("attr/dir/test", "This is a file.");

	FUNC0(false, "dir/test");
	if (FUNC4(g_repo, "core.ignorecase"))
		FUNC0(false, "dir/TeSt");

	/* Create "test" as a directory; ensure it is ignored. */
	FUNC2("attr/dir/test");
	FUNC3(FUNC5("attr/dir/test", 0777));

	FUNC0(true, "dir/test");
	if (FUNC4(g_repo, "core.ignorecase"))
		FUNC0(true, "dir/TeSt");

	/* Remove "test" entirely; ensure it is not ignored.
	 * (As it doesn't exist, it is not a directory.)
	 */
	FUNC3(FUNC6("attr/dir/test"));

	FUNC0(false, "dir/test");
	if (FUNC4(g_repo, "core.ignorecase"))
		FUNC0(false, "dir/TeSt");
}