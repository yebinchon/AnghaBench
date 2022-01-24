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
typedef  int DWORD ;

/* Variables and functions */
 int FILE_ATTRIBUTE_HIDDEN ; 
 int FUNC0 (char const*) ; 
 int /*<<< orphan*/  _repo ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*,int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 char const* FUNC8 (int /*<<< orphan*/ ) ; 
 char* FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(
	const char *working_directory,
	int is_bare,
	const char *expected_path_repository,
	const char *expected_working_directory)
{
	const char *workdir;

	FUNC1(!FUNC4(working_directory));

	FUNC2(FUNC5(&_repo, working_directory, is_bare));

	workdir = FUNC9(_repo);
	if (workdir != NULL || expected_working_directory != NULL) {
		FUNC1(
			FUNC3(workdir, expected_working_directory) == 0
		);
	}

	FUNC1(
		FUNC3(FUNC8(_repo), expected_path_repository) == 0
	);

	FUNC1(FUNC6(_repo) == is_bare);

#ifdef GIT_WIN32
	if (!is_bare) {
		DWORD fattrs = GetFileAttributes(git_repository_path(_repo));
		cl_assert((fattrs & FILE_ATTRIBUTE_HIDDEN) != 0);
	}
#endif

	FUNC1(FUNC7(_repo));
}