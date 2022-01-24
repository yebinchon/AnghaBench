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
typedef  int /*<<< orphan*/  git_commit ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * failing_commit_cases ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * passing_commit_cases ; 

void FUNC9(void)
{
	const int failing_commit_count = FUNC0(failing_commit_cases);
	const int passing_commit_count = FUNC0(passing_commit_cases);
	int i;
	git_commit *commit;

	for (i = 0; i < failing_commit_count; ++i) {
		FUNC3(FUNC8(&commit, failing_commit_cases[i]));
		FUNC6(commit);
	}

	for (i = 0; i < passing_commit_count; ++i) {
		FUNC4(FUNC8(&commit, passing_commit_cases[i]));

		if (!i)
			FUNC2("", FUNC7(commit));
		else
			FUNC1(FUNC5(
				FUNC7(commit), "a simple commit which works") == 0);

		FUNC6(commit);
	}
}