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
typedef  int /*<<< orphan*/  git_index ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_RESET_HARD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  repo ; 
 int /*<<< orphan*/ * target ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 

void FUNC10(void)
{
	git_index *index;
	int entries;

	/* Ensure every permutation of non-zero stage entries results in the
	 * path being cleaned up. */
	for (entries = 1; entries < 8; entries++) {
		FUNC1(FUNC6(&index, repo));

		FUNC9(index, entries);
		FUNC1(FUNC3(index));

		FUNC1(FUNC8(&target, repo, "26a125e"));
		FUNC1(FUNC7(repo, target, GIT_RESET_HARD, NULL));

		FUNC0(FUNC5("status/conflicting_file") == 0);

		FUNC4(target);
		target = NULL;

		FUNC2(index);
	}
}