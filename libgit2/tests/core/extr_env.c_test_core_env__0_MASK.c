#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  testfile ;
struct TYPE_8__ {char* ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_ENOTFOUND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * env_save ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char*,int /*<<< orphan*/ *) ; 
 int FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,char*) ; 
 char** home_values ; 
 scalar_t__ FUNC11 (char*,int) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (char*,char*) ; 
 size_t FUNC15 (char const*) ; 
 int /*<<< orphan*/  FUNC16 (char*,char const*,int) ; 

void FUNC17(void)
{
	git_buf path = GIT_BUF_INIT, found = GIT_BUF_INIT;
	char testfile[16], tidx = '0';
	char **val;
	const char *testname = "testfile";
	size_t testlen = FUNC15(testname);

	FUNC16(testfile, testname, sizeof(testfile));
	FUNC1(testname, testfile);

	for (val = home_values; *val != NULL; val++) {

		/* if we can't make the directory, let's just assume
		 * we are on a filesystem that doesn't support the
		 * characters in question and skip this test...
		 */
		if (FUNC11(*val, 0777) != 0) {
			*val = ""; /* mark as not created */
			continue;
		}

		FUNC3(FUNC8(&path, *val, NULL));

		/* vary testfile name in each directory so accidentally leaving
		 * an environment variable set from a previous iteration won't
		 * accidentally make this test pass...
		 */
		testfile[testlen] = tidx++;
		FUNC3(FUNC6(&path, path.ptr, testfile));
		FUNC2(path.ptr, "find me");
		FUNC7(&path, '/');

		FUNC0(
			GIT_ENOTFOUND, FUNC10(&found, testfile));

		FUNC14("HOME", path.ptr);
		FUNC13();

		FUNC3(FUNC10(&found, testfile));

		FUNC4("HOME", env_save[0]);
		FUNC13();

		FUNC0(
			GIT_ENOTFOUND, FUNC10(&found, testfile));

#ifdef GIT_WIN32
		setenv_and_check("HOMEDRIVE", NULL);
		setenv_and_check("HOMEPATH", NULL);
		setenv_and_check("USERPROFILE", path.ptr);
		set_global_search_path_from_env();

		cl_git_pass(git_sysdir_find_global_file(&found, testfile));

		{
			int root = git_path_root(path.ptr);
			char old;

			if (root >= 0) {
				setenv_and_check("USERPROFILE", NULL);
				set_global_search_path_from_env();

				cl_assert_equal_i(
					GIT_ENOTFOUND, git_sysdir_find_global_file(&found, testfile));

				old = path.ptr[root];
				path.ptr[root] = '\0';
				setenv_and_check("HOMEDRIVE", path.ptr);
				path.ptr[root] = old;
				setenv_and_check("HOMEPATH", &path.ptr[root]);
				set_global_search_path_from_env();

				cl_git_pass(git_sysdir_find_global_file(&found, testfile));
			}
		}
#endif

		(void)FUNC12(*val);
	}

	FUNC5(&path);
	FUNC5(&found);
}