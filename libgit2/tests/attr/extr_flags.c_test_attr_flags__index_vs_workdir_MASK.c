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
 int FUNC0 (char const*) ; 
 int FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char const**,int /*<<< orphan*/ *,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(void)
{
	git_repository *repo = FUNC5("attr_index");
	const char *value;

	FUNC2(!FUNC7(repo));

	/* wd then index */
	FUNC4(FUNC6(
		&value, repo, GIT_ATTR_CHECK_NO_SYSTEM | GIT_ATTR_CHECK_FILE_THEN_INDEX,
		"README.md", "bar"));
	FUNC2(FUNC0(value));

	FUNC4(FUNC6(
		&value, repo, GIT_ATTR_CHECK_NO_SYSTEM | GIT_ATTR_CHECK_FILE_THEN_INDEX,
		"README.md", "blargh"));
	FUNC3(value, "goop");

	FUNC4(FUNC6(
		&value, repo, GIT_ATTR_CHECK_NO_SYSTEM | GIT_ATTR_CHECK_FILE_THEN_INDEX,
		"README.txt", "foo"));
	FUNC2(FUNC0(value));

	/* index then wd */
	FUNC4(FUNC6(
		&value, repo, GIT_ATTR_CHECK_NO_SYSTEM | GIT_ATTR_CHECK_INDEX_THEN_FILE,
		"README.md", "bar"));
	FUNC2(FUNC1(value));

	FUNC4(FUNC6(
		&value, repo, GIT_ATTR_CHECK_NO_SYSTEM | GIT_ATTR_CHECK_INDEX_THEN_FILE,
		"README.md", "blargh"));
	FUNC3(value, "garble");

	FUNC4(FUNC6(
		&value, repo, GIT_ATTR_CHECK_NO_SYSTEM | GIT_ATTR_CHECK_INDEX_THEN_FILE,
		"README.txt", "foo"));
	FUNC2(FUNC1(value));
}