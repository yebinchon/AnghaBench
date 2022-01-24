#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct stat {scalar_t__ st_size; int st_mode; } ;
typedef  int mode_t ;
struct TYPE_5__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__ GIT_BUF_INIT ; 
 int GIT_FILEMODE_LINK ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int g_umask ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct stat*) ; 

__attribute__((used)) static void FUNC9(
	const char *template_dir,
	const char *repo_dir,
	const char *hook_path,
	bool core_filemode)
{
	git_buf expected = GIT_BUF_INIT;
	git_buf actual = GIT_BUF_INIT;
	struct stat expected_st, st;

	FUNC5(FUNC7(&expected, template_dir, hook_path));
	FUNC5(FUNC8(expected.ptr, &expected_st));

	FUNC5(FUNC7(&actual, repo_dir, hook_path));
	FUNC5(FUNC8(actual.ptr, &st));

	FUNC3(expected_st.st_size == st.st_size);

	if (FUNC1(expected_st.st_mode) != GIT_FILEMODE_LINK) {
		mode_t expected_mode =
			FUNC1(expected_st.st_mode) |
			(FUNC2(expected_st.st_mode) & ~g_umask);

		if (!core_filemode) {
			FUNC0(expected_mode);
			FUNC0(st.st_mode);
		}

		FUNC4(expected_mode, st.st_mode, "%07o");
	}

	FUNC6(&expected);
	FUNC6(&actual);
}