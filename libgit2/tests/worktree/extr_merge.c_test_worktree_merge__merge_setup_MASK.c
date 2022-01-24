#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_8__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_reference ;
struct TYPE_10__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;
typedef  int /*<<< orphan*/  git_annotated_commit ;
struct TYPE_12__ {TYPE_2__* worktree; } ;
struct TYPE_11__ {int /*<<< orphan*/  gitdir; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  CONFLICT_BRANCH ; 
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  MASTER_BRANCH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_8__ fixture ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/  const**,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * merge_files ; 

void FUNC12(void)
{
	git_reference *ours_ref, *theirs_ref;
	git_annotated_commit *ours, *theirs;
	git_buf path = GIT_BUF_INIT;
	unsigned i;

	FUNC2(FUNC11(&ours_ref, fixture.worktree, MASTER_BRANCH));
	FUNC2(FUNC4(&ours, fixture.worktree, ours_ref));

	FUNC2(FUNC11(&theirs_ref, fixture.worktree, CONFLICT_BRANCH));
	FUNC2(FUNC4(&theirs, fixture.worktree, theirs_ref));

	FUNC2(FUNC8(fixture.worktree,
		    ours, (const git_annotated_commit **)&theirs, 1));

	for (i = 0; i < FUNC0(merge_files); i++) {
		FUNC5(&path);
		FUNC2(FUNC7(&path, "%s/%s",
			    fixture.worktree->gitdir, merge_files[i]));
		FUNC1(FUNC9(path.ptr));
	}

	FUNC6(&path);
	FUNC10(ours_ref);
	FUNC10(theirs_ref);
	FUNC3(ours);
	FUNC3(theirs);
}