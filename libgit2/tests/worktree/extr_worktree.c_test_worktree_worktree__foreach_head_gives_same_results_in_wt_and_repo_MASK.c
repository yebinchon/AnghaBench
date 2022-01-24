#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_2__** contents; int /*<<< orphan*/  length; } ;
typedef  TYPE_1__ git_vector ;
struct TYPE_11__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ git_reference ;
struct TYPE_12__ {int /*<<< orphan*/  worktree; int /*<<< orphan*/  repo; } ;

/* Variables and functions */
 size_t FUNC0 (TYPE_2__**) ; 
 int /*<<< orphan*/  GIT_HEAD_FILE ; 
 TYPE_1__ GIT_VECTOR_INIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_7__ fixture ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  read_head_ref ; 

void FUNC8(void)
{
	git_vector repo_refs = GIT_VECTOR_INIT, worktree_refs = GIT_VECTOR_INIT;
	git_reference *heads[2];
	size_t i;

	FUNC3(FUNC5(&heads[0], fixture.repo, GIT_HEAD_FILE));
	FUNC3(FUNC5(&heads[1], fixture.worktree, GIT_HEAD_FILE));

	FUNC3(FUNC6(fixture.repo, read_head_ref, 0, &repo_refs));
	FUNC3(FUNC6(fixture.worktree, read_head_ref, 0, &worktree_refs));

	FUNC1(repo_refs.length, FUNC0(heads));
	FUNC1(worktree_refs.length, FUNC0(heads));

	for (i = 0; i < FUNC0(heads); i++) {
		FUNC2(heads[i]->name, ((git_reference *) repo_refs.contents[i])->name);
		FUNC2(heads[i]->name, ((git_reference *) repo_refs.contents[i])->name);
		FUNC2(heads[i]->name, ((git_reference *) worktree_refs.contents[i])->name);

		FUNC4(heads[i]);
		FUNC4(repo_refs.contents[i]);
		FUNC4(worktree_refs.contents[i]);
	}

	FUNC7(&repo_refs);
	FUNC7(&worktree_refs);
}