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

void FUNC6(void)
{
	FUNC2("attr/.gitignore");

	FUNC3(FUNC5("attr/dir1", 0777));
	FUNC3(FUNC5("attr/dir1/dir2", 0777));
	FUNC3(FUNC5("attr/dir1/dir2/dir3", 0777));

	FUNC1("attr/dir1/dir2/dir3/.gitignore", "dir1/\ndir1/subdir/");

	FUNC0(false, "dir1/file");
	FUNC0(false, "dir1/dir2/file");
	FUNC0(false, "dir1/dir2/dir3/file");
	FUNC0(true,  "dir1/dir2/dir3/dir1/file");
	FUNC0(true,  "dir1/dir2/dir3/dir1/subdir/foo");

	if (FUNC4(g_repo, "core.ignorecase")) {
		FUNC1("attr/dir1/dir2/dir3/.gitignore", "DiR1/\nDiR1/subdir/\n");

		FUNC0(false, "dir1/file");
		FUNC0(false, "dir1/dir2/file");
		FUNC0(false, "dir1/dir2/dir3/file");
		FUNC0(true,  "dir1/dir2/dir3/dir1/file");
		FUNC0(true,  "dir1/dir2/dir3/dir1/subdir/foo");
	}
}