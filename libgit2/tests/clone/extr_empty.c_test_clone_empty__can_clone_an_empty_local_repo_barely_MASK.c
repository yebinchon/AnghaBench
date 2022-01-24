#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_reference ;
struct TYPE_8__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;
struct TYPE_9__ {int bare; } ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_ENOTFOUND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  cleanup_repository ; 
 TYPE_2__ g_options ; 
 int /*<<< orphan*/  g_repo_cloned ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char const*) ; 

void FUNC9(void)
{
	char *local_name = "refs/heads/master";
	const char *expected_tracked_branch_name = "refs/remotes/origin/master";
	const char *expected_remote_name = "origin";
	git_buf buf = GIT_BUF_INIT;
	git_reference *ref;

	FUNC3(&cleanup_repository, "./empty");

	g_options.bare = true;
	FUNC2(FUNC7(&g_repo_cloned, "./empty_bare.git", "./empty", &g_options));

	/* Although the HEAD is unborn... */
	FUNC0(GIT_ENOTFOUND, FUNC8(&ref, g_repo_cloned, local_name));

	/* ...one can still retrieve the name of the remote tracking reference */
	FUNC2(FUNC5(&buf, g_repo_cloned, local_name));

	FUNC1(expected_tracked_branch_name, buf.ptr);
	FUNC6(&buf);

	/* ...and the name of the remote... */
	FUNC2(FUNC4(&buf, g_repo_cloned, expected_tracked_branch_name));

	FUNC1(expected_remote_name, buf.ptr);
	FUNC6(&buf);

	/* ...even when the remote HEAD is unborn as well */
	FUNC0(GIT_ENOTFOUND, FUNC8(&ref, g_repo_cloned,
		expected_tracked_branch_name));
}