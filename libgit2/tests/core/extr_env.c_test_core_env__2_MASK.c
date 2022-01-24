#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  testfile ;
struct TYPE_9__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 scalar_t__ EEXIST ; 
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_ENOTFOUND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,char*) ; 
 char** home_values ; 
 scalar_t__ FUNC10 (char*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 size_t FUNC13 (char const*) ; 
 int /*<<< orphan*/  FUNC14 (char*,char const*,int) ; 

void FUNC15(void)
{
	git_buf path = GIT_BUF_INIT, found = GIT_BUF_INIT;
	char testfile[16], tidx = '0';
	char **val;
	const char *testname = "alternate";
	size_t testlen = FUNC13(testname);

	FUNC14(testfile, testname, sizeof(testfile));
	FUNC2(testname, testfile);

	for (val = home_values; *val != NULL; val++) {

		/* if we can't make the directory, let's just assume
		 * we are on a filesystem that doesn't support the
		 * characters in question and skip this test...
		 */
		if (FUNC10(*val, 0777) != 0 && errno != EEXIST) {
			*val = ""; /* mark as not created */
			continue;
		}

		FUNC4(FUNC8(&path, *val, NULL));

		/* vary testfile name so any sloppiness is resetting variables or
		 * deleting files won't accidentally make a test pass.
		 */
		testfile[testlen] = tidx++;
		FUNC4(FUNC6(&path, path.ptr, testfile));
		FUNC3(path.ptr, "find me");
		FUNC7(&path, '/');

		/* default should be NOTFOUND */
		FUNC1(
			GIT_ENOTFOUND, FUNC9(&found, testfile));

		/* try plain, append $PATH, and prepend $PATH */
		FUNC0(path.ptr,  0, testfile, &found);
		FUNC0(path.ptr, -1, testfile, &found);
		FUNC0(path.ptr,  1, testfile, &found);

		/* cleanup */
		FUNC4(FUNC6(&path, path.ptr, testfile));
		(void)FUNC12(path.ptr);
		(void)FUNC11(*val);
	}

	FUNC5(&path);
	FUNC5(&found);
}