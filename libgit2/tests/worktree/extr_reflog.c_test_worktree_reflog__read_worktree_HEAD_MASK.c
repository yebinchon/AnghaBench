#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_reflog_entry ;
typedef  int /*<<< orphan*/  git_reflog ;
struct TYPE_2__ {int /*<<< orphan*/  worktree; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__ fixture ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 

void FUNC9(void)
{
	git_reflog *reflog;
	const git_reflog_entry *entry;

	FUNC3(FUNC8(&reflog, fixture.worktree, "HEAD"));
	FUNC1(1, FUNC6(reflog));

	entry = FUNC4(reflog, 0);
	FUNC0(entry != NULL);
	FUNC2("checkout: moving from 099fabac3a9ea935598528c27f866e34089c2eff to testrepo-worktree", FUNC5(entry));

	FUNC7(reflog);
}