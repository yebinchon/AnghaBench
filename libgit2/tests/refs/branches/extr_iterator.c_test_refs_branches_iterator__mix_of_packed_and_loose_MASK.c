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
struct expectations {char* member_0; int /*<<< orphan*/  member_1; } ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_branch_iterator ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BRANCH_ALL ; 
 int /*<<< orphan*/  FUNC0 (struct expectations*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct expectations*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC6(void)
{
	git_branch_iterator *iter;
	struct expectations exp[] = {
		{ "master", 0 },
		{ "origin/HEAD", 0 },
		{ "origin/master", 0 },
		{ "origin/packed", 0 },
		{ NULL, 0 }
	};
	git_repository *r2;

	r2 = FUNC2("testrepo2");

	FUNC1(FUNC5(&iter, r2, GIT_BRANCH_ALL));
	FUNC3(exp, iter);

	FUNC4(iter);

	FUNC0(exp, "master");
	FUNC0(exp, "origin/HEAD");
	FUNC0(exp, "origin/master");
	FUNC0(exp, "origin/packed");
}