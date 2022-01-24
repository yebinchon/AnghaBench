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
 int /*<<< orphan*/  GIT_DIRECTION_FETCH ; 
 int /*<<< orphan*/  GIT_DIRECTION_PUSH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 

void FUNC1(void)
{
	/* Ported from https://github.com/git/git/blob/abd2bde78bd994166900290434a2048e660dabed/t/t5511-refspec.sh */

	FUNC0(GIT_DIRECTION_PUSH, "", false);
	FUNC0(GIT_DIRECTION_PUSH, ":", true);
	FUNC0(GIT_DIRECTION_PUSH, "::", false);
	FUNC0(GIT_DIRECTION_PUSH, "+:", true);

	FUNC0(GIT_DIRECTION_FETCH, "", true);
	FUNC0(GIT_DIRECTION_PUSH, ":", true);
	FUNC0(GIT_DIRECTION_FETCH, "::", false);

	FUNC0(GIT_DIRECTION_PUSH, "refs/heads/*:refs/remotes/frotz/*", true);
	FUNC0(GIT_DIRECTION_PUSH, "refs/heads/*:refs/remotes/frotz", false);
	FUNC0(GIT_DIRECTION_PUSH, "refs/heads:refs/remotes/frotz/*", false);
	FUNC0(GIT_DIRECTION_PUSH, "refs/heads/master:refs/remotes/frotz/xyzzy", true);

	/*
	 * These have invalid LHS, but we do not have a formal "valid sha-1
	 * expression syntax checker" so they are not checked with the current
	 * code.  They will be caught downstream anyway, but we may want to
	 * have tighter check later...
	 */
	/*assert_refspec(GIT_DIRECTION_PUSH, "refs/heads/master::refs/remotes/frotz/xyzzy", false); */
	/*assert_refspec(GIT_DIRECTION_PUSH, "refs/heads/maste :refs/remotes/frotz/xyzzy", false); */

	FUNC0(GIT_DIRECTION_FETCH, "refs/heads/*:refs/remotes/frotz/*", true);
	FUNC0(GIT_DIRECTION_FETCH, "refs/heads/*:refs/remotes/frotz", false);
	FUNC0(GIT_DIRECTION_FETCH, "refs/heads:refs/remotes/frotz/*", false);
	FUNC0(GIT_DIRECTION_FETCH, "refs/heads/master:refs/remotes/frotz/xyzzy", true);
	FUNC0(GIT_DIRECTION_FETCH, "refs/heads/master::refs/remotes/frotz/xyzzy", false);
	FUNC0(GIT_DIRECTION_FETCH, "refs/heads/maste :refs/remotes/frotz/xyzzy", false);

	FUNC0(GIT_DIRECTION_PUSH, "master~1:refs/remotes/frotz/backup", true);
	FUNC0(GIT_DIRECTION_FETCH, "master~1:refs/remotes/frotz/backup", false);
	FUNC0(GIT_DIRECTION_PUSH, "HEAD~4:refs/remotes/frotz/new", true);
	FUNC0(GIT_DIRECTION_FETCH, "HEAD~4:refs/remotes/frotz/new", false);

	FUNC0(GIT_DIRECTION_PUSH, "HEAD", true);
	FUNC0(GIT_DIRECTION_FETCH, "HEAD", true);
	FUNC0(GIT_DIRECTION_PUSH, "refs/heads/ nitfol", false);
	FUNC0(GIT_DIRECTION_FETCH, "refs/heads/ nitfol", false);

	FUNC0(GIT_DIRECTION_PUSH, "HEAD:", false);
	FUNC0(GIT_DIRECTION_FETCH, "HEAD:", true);
	FUNC0(GIT_DIRECTION_PUSH, "refs/heads/ nitfol:", false);
	FUNC0(GIT_DIRECTION_FETCH, "refs/heads/ nitfol:", false);

	FUNC0(GIT_DIRECTION_PUSH, ":refs/remotes/frotz/deleteme", true);
	FUNC0(GIT_DIRECTION_FETCH, ":refs/remotes/frotz/HEAD-to-me", true);
	FUNC0(GIT_DIRECTION_PUSH, ":refs/remotes/frotz/delete me", false);
	FUNC0(GIT_DIRECTION_FETCH, ":refs/remotes/frotz/HEAD to me", false);

	FUNC0(GIT_DIRECTION_FETCH, "refs/heads/*/for-linus:refs/remotes/mine/*-blah", true);
	FUNC0(GIT_DIRECTION_PUSH, "refs/heads/*/for-linus:refs/remotes/mine/*-blah", true);

	FUNC0(GIT_DIRECTION_FETCH, "refs/heads*/for-linus:refs/remotes/mine/*", true);
	FUNC0(GIT_DIRECTION_PUSH, "refs/heads*/for-linus:refs/remotes/mine/*", true);

	FUNC0(GIT_DIRECTION_FETCH, "refs/heads/*/*/for-linus:refs/remotes/mine/*", false);
	FUNC0(GIT_DIRECTION_PUSH, "refs/heads/*/*/for-linus:refs/remotes/mine/*", false);

	FUNC0(GIT_DIRECTION_FETCH, "refs/heads/*g*/for-linus:refs/remotes/mine/*", false);
	FUNC0(GIT_DIRECTION_PUSH, "refs/heads/*g*/for-linus:refs/remotes/mine/*", false);

	FUNC0(GIT_DIRECTION_FETCH, "refs/heads/*/for-linus:refs/remotes/mine/*", true);
	FUNC0(GIT_DIRECTION_PUSH, "refs/heads/*/for-linus:refs/remotes/mine/*", true);

	FUNC0(GIT_DIRECTION_FETCH, "master", true);
	FUNC0(GIT_DIRECTION_PUSH, "master", true);

	FUNC0(GIT_DIRECTION_FETCH, "refs/pull/*/head:refs/remotes/origin/pr/*", true);
}