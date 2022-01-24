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
typedef  int /*<<< orphan*/  git_reference ;
typedef  int /*<<< orphan*/  git_index_entry ;
typedef  int /*<<< orphan*/  git_index ;
struct TYPE_11__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;
typedef  int /*<<< orphan*/  git_annotated_commit ;
struct TYPE_13__ {TYPE_2__* worktree; } ;
struct TYPE_12__ {int /*<<< orphan*/  workdir; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFLICT_BRANCH ; 
 int /*<<< orphan*/  CONFLICT_BRANCH_FILE_TXT ; 
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (size_t,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_9__ fixture ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/  const*) ; 
 size_t FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,int /*<<< orphan*/  const**,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ **,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ **,TYPE_2__*) ; 

void FUNC17(void)
{
	git_buf path = GIT_BUF_INIT, buf = GIT_BUF_INIT;
	git_reference *theirs_ref;
	git_annotated_commit *theirs;
	git_index *index;
	const git_index_entry *entry;
	size_t i, conflicts = 0;

	FUNC3(FUNC15(&theirs_ref, fixture.worktree, CONFLICT_BRANCH));
	FUNC3(FUNC5(&theirs, fixture.worktree, theirs_ref));

	FUNC3(FUNC13(fixture.worktree,
		    (const git_annotated_commit **)&theirs, 1, NULL, NULL));

	FUNC3(FUNC16(&index, fixture.worktree));
	for (i = 0; i < FUNC10(index); i++) {
		FUNC0(entry = FUNC12(index, i));

		if (FUNC9(entry))
			conflicts++;
	}
	FUNC2(conflicts, 3);

	FUNC14(theirs_ref);
	FUNC4(theirs);
	FUNC11(index);

	FUNC3(FUNC7(&path, fixture.worktree->workdir, "branch_file.txt"));
	FUNC3(FUNC8(&buf, path.ptr));
	FUNC1(buf.ptr, CONFLICT_BRANCH_FILE_TXT);

	FUNC6(&path);
	FUNC6(&buf);
}