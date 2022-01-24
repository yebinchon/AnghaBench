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
typedef  int /*<<< orphan*/  git_reference ;
typedef  int /*<<< orphan*/  git_annotated_commit ;
struct TYPE_2__ {int /*<<< orphan*/  worktree; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFLICT_BRANCH ; 
 int /*<<< orphan*/  GIT_MERGE_HEAD_FILE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__ fixture ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/  const**,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC6(void)
{
	git_reference *theirs_ref, *ref;
	git_annotated_commit *theirs;

	FUNC0(FUNC5(&theirs_ref, fixture.worktree, CONFLICT_BRANCH));
	FUNC0(FUNC2(&theirs, fixture.worktree, theirs_ref));
	FUNC0(FUNC3(fixture.worktree, (const git_annotated_commit **)&theirs, 1, NULL, NULL));

	FUNC0(FUNC5(&ref, fixture.worktree, GIT_MERGE_HEAD_FILE));

	FUNC4(ref);
	FUNC4(theirs_ref);
	FUNC1(theirs);
}