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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,char const*) ; 
 scalar_t__ FUNC3 (char const*,char const*) ; 

void FUNC4(const char *path, const char *old_git_dir, const char *new_git_dir)
{
	if (FUNC3(old_git_dir, new_git_dir) < 0)
		FUNC2(FUNC0("could not migrate git directory from '%s' to '%s'"),
			old_git_dir, new_git_dir);

	FUNC1(path, new_git_dir, 0);
}