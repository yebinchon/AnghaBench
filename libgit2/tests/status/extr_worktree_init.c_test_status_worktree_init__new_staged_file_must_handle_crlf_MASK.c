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
typedef  int /*<<< orphan*/  git_index ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_STATUS_INDEX_NEW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  cleanup_new_repo ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (unsigned int*,int /*<<< orphan*/ *,char*) ; 

void FUNC12(void)
{
	git_repository *repo;
	git_index *index;
	unsigned int status;

	FUNC4(&cleanup_new_repo, "getting_started");
	FUNC2(FUNC10(&repo, "getting_started", 0));

	/* Ensure that repo has core.autocrlf=true */
	FUNC3(repo, "core.autocrlf", true);

	FUNC1("getting_started/testfile.txt", "content\r\n");	/* Content with CRLF */

	FUNC2(FUNC9(&index, repo));
	FUNC2(FUNC5(index, "testfile.txt"));
	FUNC2(FUNC7(index));

	FUNC2(FUNC11(&status, repo, "testfile.txt"));
	FUNC0(GIT_STATUS_INDEX_NEW, status);

	FUNC6(index);
	FUNC8(repo);
}