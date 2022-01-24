#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_repository ;
struct TYPE_6__ {int /*<<< orphan*/ * ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int GIT_REPOSITORY_OPEN_NO_DOTGIT ; 
 int GIT_REPOSITORY_OPEN_NO_SEARCH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 

void FUNC10(void)
{
	git_repository *base, *repo;
	git_buf ceiling = GIT_BUF_INIT;

	base = FUNC2("attr");
	FUNC1(FUNC5(&ceiling, FUNC8(base)));

	/* fail with no searching */
	FUNC0(FUNC6(&repo, "attr/sub"));
	FUNC0(FUNC7(
		&repo, "attr/sub", GIT_REPOSITORY_OPEN_NO_SEARCH, NULL));

	/* fail with ceiling too low */
	FUNC0(FUNC7(&repo, "attr/sub", 0, ceiling.ptr));
	FUNC1(FUNC4(&ceiling, ceiling.ptr, "sub"));
	FUNC0(FUNC7(&repo, "attr/sub/sub", 0, ceiling.ptr));

	/* fail with no repo */
	FUNC1(FUNC9("alternate", 0777));
	FUNC1(FUNC9("alternate/.git", 0777));
	FUNC0(FUNC7(&repo, "alternate", 0, NULL));
	FUNC0(FUNC7(&repo, "alternate/.git", 0, NULL));

	/* fail with no searching and no appending .git */
	FUNC0(FUNC7(
		&repo, "attr",
		GIT_REPOSITORY_OPEN_NO_SEARCH | GIT_REPOSITORY_OPEN_NO_DOTGIT,
		NULL));

	FUNC3(&ceiling);
}