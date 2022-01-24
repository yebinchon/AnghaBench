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
typedef  scalar_t__ uid_t ;
struct TYPE_9__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int GIT_ENOTFOUND ; 
 int FUNC0 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC8(git_buf *out)
{
#ifdef GIT_WIN32
	return git_win32__find_xdg_dirs(out);
#else
	git_buf env = GIT_BUF_INIT;
	int error;
	uid_t uid, euid;

	uid = FUNC2();
	euid = FUNC1();

	/*
	 * In case we are running setuid, only look up passwd
	 * directory of the effective user.
	 */
	if (uid == euid) {
		if ((error = FUNC3(&env, "XDG_CONFIG_HOME")) == 0)
			error = FUNC5(out, env.ptr, "git");

		if (error == GIT_ENOTFOUND && (error = FUNC3(&env, "HOME")) == 0)
			error = FUNC5(out, env.ptr, ".config/git");
	} else {
		if ((error = FUNC0(&env, euid)) == 0)
			error = FUNC5(out, env.ptr, ".config/git");
	}

	if (error == GIT_ENOTFOUND) {
		FUNC6();
		error = 0;
	}

	FUNC4(&env);
	return error;
#endif
}