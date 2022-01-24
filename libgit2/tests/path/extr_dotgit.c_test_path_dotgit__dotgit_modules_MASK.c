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
 size_t FUNC0 (char**) ; 
 int /*<<< orphan*/  GIT_PATH_FS_GENERIC ; 
 int /*<<< orphan*/  GIT_PATH_GITFILE_GITMODULES ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char** gitmodules_altnames ; 
 char** gitmodules_not_altnames ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 

void FUNC5(void)
{
	size_t i;

	FUNC1(1, FUNC3(".gitmodules", FUNC4(".gitmodules"), GIT_PATH_GITFILE_GITMODULES, GIT_PATH_FS_GENERIC));
	FUNC1(1, FUNC3(".git\xe2\x80\x8cmodules", FUNC4(".git\xe2\x80\x8cmodules"), GIT_PATH_GITFILE_GITMODULES, GIT_PATH_FS_GENERIC));

	for (i = 0; i < FUNC0(gitmodules_altnames); i++) {
		const char *name = gitmodules_altnames[i];
		if (!FUNC3(name, FUNC4(name), GIT_PATH_GITFILE_GITMODULES, GIT_PATH_FS_GENERIC))
			FUNC2(name);
	}

	for (i = 0; i < FUNC0(gitmodules_not_altnames); i++) {
		const char *name = gitmodules_not_altnames[i];
		if (FUNC3(name, FUNC4(name), GIT_PATH_GITFILE_GITMODULES, GIT_PATH_FS_GENERIC))
			FUNC2(name);
	}
}