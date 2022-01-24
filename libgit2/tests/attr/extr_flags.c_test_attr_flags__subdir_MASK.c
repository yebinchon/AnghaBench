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
typedef  int /*<<< orphan*/  git_repository ;

/* Variables and functions */
 int GIT_ATTR_CHECK_FILE_THEN_INDEX ; 
 int GIT_ATTR_CHECK_INDEX_THEN_FILE ; 
 int GIT_ATTR_CHECK_NO_SYSTEM ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char const**,int /*<<< orphan*/ *,int,char*,char*) ; 

void FUNC6(void)
{
	git_repository *repo = FUNC4("attr_index");
	const char *value;

	/* wd then index */
	FUNC3(FUNC5(
		&value, repo, GIT_ATTR_CHECK_NO_SYSTEM | GIT_ATTR_CHECK_FILE_THEN_INDEX,
		"sub/sub/README.md", "bar"));
	FUNC2(value, "1234");

	FUNC3(FUNC5(
		&value, repo, GIT_ATTR_CHECK_NO_SYSTEM | GIT_ATTR_CHECK_FILE_THEN_INDEX,
		"sub/sub/README.txt", "another"));
	FUNC2(value, "one");

	FUNC3(FUNC5(
		&value, repo, GIT_ATTR_CHECK_NO_SYSTEM | GIT_ATTR_CHECK_FILE_THEN_INDEX,
		"sub/sub/README.txt", "again"));
	FUNC1(FUNC0(value));

	FUNC3(FUNC5(
		&value, repo, GIT_ATTR_CHECK_NO_SYSTEM | GIT_ATTR_CHECK_FILE_THEN_INDEX,
		"sub/sub/README.txt", "beep"));
	FUNC2(value, "10");

	/* index then wd */
	FUNC3(FUNC5(
		&value, repo, GIT_ATTR_CHECK_NO_SYSTEM | GIT_ATTR_CHECK_INDEX_THEN_FILE,
		"sub/sub/README.md", "bar"));
	FUNC2(value, "1337");

	FUNC3(FUNC5(
		&value, repo, GIT_ATTR_CHECK_NO_SYSTEM | GIT_ATTR_CHECK_INDEX_THEN_FILE,
		"sub/sub/README.txt", "another"));
	FUNC2(value, "one");

	FUNC3(FUNC5(
		&value, repo, GIT_ATTR_CHECK_NO_SYSTEM | GIT_ATTR_CHECK_INDEX_THEN_FILE,
		"sub/sub/README.txt", "again"));
	FUNC1(FUNC0(value));

	FUNC3(FUNC5(
		&value, repo, GIT_ATTR_CHECK_NO_SYSTEM | GIT_ATTR_CHECK_INDEX_THEN_FILE,
		"sub/sub/README.txt", "beep"));
	FUNC2(value, "5");
}