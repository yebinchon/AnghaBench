#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_repository ;
struct TYPE_3__ {int /*<<< orphan*/  path; } ;
typedef  TYPE_1__ git_index_entry ;
typedef  int /*<<< orphan*/  git_index ;

/* Variables and functions */
 int GIT_INDEX_CAPABILITY_IGNORE_CASE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cleanup_myrepo ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC10 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ **,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*) ; 

void FUNC15(void)
{
	git_repository *repo;
	git_index *index;
	const git_index_entry *entry;
	int index_caps;

	FUNC4(&cleanup_myrepo, NULL);

	FUNC2(FUNC13(&repo, "./myrepo", 0));
	FUNC2(FUNC12(&index, repo));

	index_caps = FUNC7(index);

	FUNC3("myrepo/test.txt", "hey there\n");
	FUNC2(FUNC6(index, "test.txt"));

	FUNC2(FUNC14("myrepo/test.txt", "myrepo/TEST.txt"));
	FUNC3("myrepo/TEST.txt", "hello again\n");
	FUNC2(FUNC6(index, "TEST.txt"));

	if (index_caps & GIT_INDEX_CAPABILITY_IGNORE_CASE)
		FUNC1(1, (int)FUNC8(index));
	else
		FUNC1(2, (int)FUNC8(index));

	/* Test access by path instead of index */
	FUNC0((entry = FUNC10(index, "test.txt", 0)) != NULL);
	/* The path should *not* have changed without an explicit remove */
	FUNC0(FUNC5(entry->path, "test.txt") == 0);

	FUNC0((entry = FUNC10(index, "TEST.txt", 0)) != NULL);
	if (index_caps & GIT_INDEX_CAPABILITY_IGNORE_CASE)
		/* The path should *not* have changed without an explicit remove */
		FUNC0(FUNC5(entry->path, "test.txt") == 0);
	else
		FUNC0(FUNC5(entry->path, "TEST.txt") == 0);

	FUNC9(index);
	FUNC11(repo);
}