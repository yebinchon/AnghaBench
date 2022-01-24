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
typedef  int /*<<< orphan*/  git_reference ;
typedef  int /*<<< orphan*/  git_object ;
typedef  int /*<<< orphan*/  git_commit ;

/* Variables and functions */
 int GIT_OID_HEXSZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,int /*<<< orphan*/ *) ; 

void FUNC10(void)
{
	git_repository *repo;
	git_reference *branch;
	git_object *target;
	char sha[GIT_OID_HEXSZ + 1];

	repo = FUNC2("testrepo.git");

	FUNC9("c47800", "c47800c7266a2be04c571c04d5a6614691ea99bd", repo);

	FUNC0(FUNC8(&target, repo, "HEAD~3"));
	FUNC0(FUNC3(&branch, repo, "c47800", (git_commit *)target, 0));

	FUNC6(sha, GIT_OID_HEXSZ + 1, FUNC5(target));

	FUNC9("c47800", sha, repo);

	FUNC7(branch);
	FUNC4(target);
	FUNC1();
}