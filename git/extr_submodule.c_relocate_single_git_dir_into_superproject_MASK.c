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
struct submodule {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,char const*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 () ; 
 char* FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  null_oid ; 
 scalar_t__ FUNC6 (char*) ; 
 char* FUNC7 (char const*,int) ; 
 int /*<<< orphan*/  FUNC8 (char const*,char*,char*) ; 
 scalar_t__ FUNC9 (char const*) ; 
 int /*<<< orphan*/  stderr ; 
 struct submodule* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC11 (char const*) ; 
 int /*<<< orphan*/  the_repository ; 
 char* FUNC12 (char*,char const*) ; 

__attribute__((used)) static void FUNC13(const char *path)
{
	char *old_git_dir = NULL, *real_old_git_dir = NULL, *real_new_git_dir = NULL;
	const char *new_git_dir;
	const struct submodule *sub;

	if (FUNC11(path))
		FUNC1(FUNC0("relocate_gitdir for submodule '%s' with "
		      "more than one worktree not supported"), path);

	old_git_dir = FUNC12("%s/.git", path);
	if (FUNC6(old_git_dir))
		/* If it is an actual gitfile, it doesn't need migration. */
		return;

	real_old_git_dir = FUNC7(old_git_dir, 1);

	sub = FUNC10(the_repository, &null_oid, path);
	if (!sub)
		FUNC1(FUNC0("could not lookup name for submodule '%s'"), path);

	new_git_dir = FUNC5("modules/%s", sub->name);
	if (FUNC9(new_git_dir) < 0)
		FUNC1(FUNC0("could not create directory '%s'"), new_git_dir);
	real_new_git_dir = FUNC7(new_git_dir, 1);

	FUNC2(stderr, FUNC0("Migrating git directory of '%s%s' from\n'%s' to\n'%s'\n"),
		FUNC4(), path,
		real_old_git_dir, real_new_git_dir);

	FUNC8(path, real_old_git_dir, real_new_git_dir);

	FUNC3(old_git_dir);
	FUNC3(real_old_git_dir);
	FUNC3(real_new_git_dir);
}