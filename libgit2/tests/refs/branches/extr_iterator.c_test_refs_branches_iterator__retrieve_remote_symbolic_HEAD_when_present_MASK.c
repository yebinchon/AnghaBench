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
typedef  int /*<<< orphan*/  git_branch_iterator ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BRANCH_REMOTE ; 
 int /*<<< orphan*/  FUNC0 (struct expectations*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct expectations*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fake_remote ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  repo ; 

void FUNC8(void)
{
	git_branch_iterator *iter;
	struct expectations exp[] = {
		{ "nulltoken/HEAD", 0 },
		{ "nulltoken/master", 0 },
		{ NULL, 0 }
	};

	FUNC6(fake_remote);
	FUNC2(FUNC7(&fake_remote, repo, "refs/remotes/nulltoken/HEAD", "refs/remotes/nulltoken/master", 0, NULL));

	FUNC1(GIT_BRANCH_REMOTE, 3);

	FUNC2(FUNC5(&iter, repo, GIT_BRANCH_REMOTE));
	FUNC3(exp, iter);
	FUNC4(iter);

	FUNC0(exp, "nulltoken/HEAD");
	FUNC0(exp, "nulltoken/master");
}