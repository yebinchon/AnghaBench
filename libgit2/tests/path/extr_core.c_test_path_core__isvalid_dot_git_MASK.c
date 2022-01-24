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
 int /*<<< orphan*/  GIT_PATH_REJECT_DOT_GIT_LITERAL ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(void)
{
	FUNC0(true, FUNC1(NULL, ".git", 0, 0));
	FUNC0(true, FUNC1(NULL, ".git/foo", 0, 0));
	FUNC0(true, FUNC1(NULL, "foo/.git", 0, 0));
	FUNC0(true, FUNC1(NULL, "foo/.git/bar", 0, 0));
	FUNC0(true, FUNC1(NULL, "foo/.GIT/bar", 0, 0));
	FUNC0(true, FUNC1(NULL, "foo/bar/.Git", 0, 0));

	FUNC0(false, FUNC1(NULL, ".git", 0, GIT_PATH_REJECT_DOT_GIT_LITERAL));
	FUNC0(false, FUNC1(NULL, ".git/foo", 0, GIT_PATH_REJECT_DOT_GIT_LITERAL));
	FUNC0(false, FUNC1(NULL, "foo/.git", 0, GIT_PATH_REJECT_DOT_GIT_LITERAL));
	FUNC0(false, FUNC1(NULL, "foo/.git/bar", 0, GIT_PATH_REJECT_DOT_GIT_LITERAL));
	FUNC0(false, FUNC1(NULL, "foo/.GIT/bar", 0, GIT_PATH_REJECT_DOT_GIT_LITERAL));
	FUNC0(false, FUNC1(NULL, "foo/bar/.Git", 0, GIT_PATH_REJECT_DOT_GIT_LITERAL));

	FUNC0(true, FUNC1(NULL, "!git", 0, 0));
	FUNC0(true, FUNC1(NULL, "foo/!git", 0, 0));
	FUNC0(true, FUNC1(NULL, "!git/bar", 0, 0));
	FUNC0(true, FUNC1(NULL, ".tig", 0, 0));
	FUNC0(true, FUNC1(NULL, "foo/.tig", 0, 0));
	FUNC0(true, FUNC1(NULL, ".tig/bar", 0, 0));
}