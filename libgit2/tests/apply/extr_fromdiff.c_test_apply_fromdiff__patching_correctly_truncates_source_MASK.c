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
typedef  int /*<<< orphan*/  git_patch ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_EAPPLYFAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char**,unsigned int*,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,char*,int,char*,char*,int,char*,int /*<<< orphan*/ *) ; 

void FUNC7(void)
{
	git_buf original = GIT_BUF_INIT, patched = GIT_BUF_INIT;
	git_patch *patch;
	unsigned int mode;
	char *path;

	FUNC1(FUNC6(&patch,
					   "foo\nbar", 7, "file.txt",
					   "foo\nfoo", 7, "file.txt", NULL));

	/*
	 * Previously, we would fail to correctly truncate the source buffer if
	 * the source has more than one line and ends with a non-newline
	 * character. In the following call, we thus truncate the source string
	 * in the middle of the second line. Without the bug fixed, we would
	 * successfully apply the patch to the source and return success. With
	 * the overflow being fixed, we should return an error.
	 */
	FUNC0(GIT_EAPPLYFAIL,
			 FUNC3(&patched, &path, &mode,
					  "foo\nbar\n", 5, patch, NULL));

	/* Verify that the patch succeeds if we do not truncate */
	FUNC1(FUNC3(&patched, &path, &mode,
				     "foo\nbar\n", 7, patch, NULL));

	FUNC4(&original);
	FUNC4(&patched);
	FUNC5(patch);
	FUNC2(path);
}