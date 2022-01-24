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
typedef  scalar_t__ uid_t ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int GIT_ENOTFOUND ; 
 int FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 char* FUNC1 (char*) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(git_buf *out)
{
#ifdef GIT_WIN32
	return git_win32__find_global_dirs(out);
#else
	int error;
	uid_t uid, euid;
	const char *sandbox_id;

	uid = FUNC3();
	euid = FUNC2();

	/**
	 * If APP_SANDBOX_CONTAINER_ID is set, we are running in a
	 * sandboxed environment on macOS.
	 */
	sandbox_id = FUNC1("APP_SANDBOX_CONTAINER_ID");

	/*
	 * In case we are running setuid, use the configuration
	 * of the effective user.
	 *
	 * If we are running in a sandboxed environment on macOS,
	 * we have to get the HOME dir from the password entry file.
	 */
	if (!sandbox_id && uid == euid)
	    error = FUNC4(out, "HOME");
	else
	    error = FUNC0(out, euid);

	if (error == GIT_ENOTFOUND) {
		FUNC5();
		error = 0;
	}

	return error;
#endif
}