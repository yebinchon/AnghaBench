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
typedef  int /*<<< orphan*/  git_oid ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_SORT_TIME ; 
 int /*<<< orphan*/  _walk ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  commit_count ; 
 int /*<<< orphan*/  commit_head ; 
 int /*<<< orphan*/  commit_sorting_time ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC9(void)
{
	int i = 0;
	git_oid oid;

	FUNC7(NULL);

	FUNC2(&oid, commit_head);

	/* push, sort, and test the walk */
	FUNC1(FUNC4(_walk, &oid));
	FUNC6(_walk, GIT_SORT_TIME);

	FUNC1(FUNC8(_walk, commit_sorting_time, 2));

	/* reset, push, and test again - we should see all entries */
	FUNC5(_walk);
	FUNC1(FUNC4(_walk, &oid));

	while (FUNC3(&oid, _walk) == 0)
		i++;

	FUNC0(i, commit_count);
}