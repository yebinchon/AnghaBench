#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_9__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int locked; } ;
typedef  TYPE_1__ git_worktree ;
struct TYPE_12__ {int /*<<< orphan*/  size; } ;
typedef  TYPE_2__ git_buf ;
struct TYPE_13__ {int /*<<< orphan*/  repo; } ;

/* Variables and functions */
 TYPE_2__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_9__ fixture ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__**,int /*<<< orphan*/ ,char*) ; 

void FUNC8(void)
{
	git_worktree *wt;
	git_buf reason = GIT_BUF_INIT;

	FUNC2(FUNC7(&wt, fixture.repo, "testrepo-worktree"));

	FUNC0(!FUNC5(NULL, wt));
	FUNC2(FUNC6(wt, NULL));
	FUNC0(FUNC5(&reason, wt) > 0);
	FUNC1(reason.size, 0);
	FUNC0(wt->locked);

	FUNC3(&reason);
	FUNC4(wt);
}