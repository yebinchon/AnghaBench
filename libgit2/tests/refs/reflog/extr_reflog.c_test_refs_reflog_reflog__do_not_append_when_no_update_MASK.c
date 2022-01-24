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
typedef  int /*<<< orphan*/  git_reflog ;
typedef  int /*<<< orphan*/  git_reference ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 size_t FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 

void FUNC9(void)
{
	size_t nlogs, nlogs_after;
	git_reference *ref, *ref2;
	git_reflog *log;

	FUNC1(FUNC8(&log, g_repo, "HEAD"));
	nlogs = FUNC6(log);
	FUNC7(log);

	FUNC1(FUNC4(&ref, g_repo, "refs/heads/master"));
	FUNC1(FUNC2(&ref2, g_repo, "refs/heads/master",
					 FUNC5(ref), 1, NULL));

	FUNC3(ref);
	FUNC3(ref2);

	FUNC1(FUNC8(&log, g_repo, "HEAD"));
	nlogs_after = FUNC6(log);
	FUNC7(log);

	FUNC0(nlogs_after, nlogs);
}