#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_tree ;
typedef  int /*<<< orphan*/  git_oid ;
struct TYPE_5__ {int /*<<< orphan*/  path; } ;
typedef  TYPE_1__ git_index_entry ;
typedef  int /*<<< orphan*/  git_index_conflict_iterator ;
typedef  int /*<<< orphan*/  git_index ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ITEROVER ; 
 int /*<<< orphan*/  _repo ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__ const**,TYPE_1__ const**,TYPE_1__ const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC14(void)
{
	git_oid tree_id;
	git_tree *tree;
	git_index *index, *new_index;
	git_index_conflict_iterator *conflict_iterator;
	const git_index_entry *ancestor, *ours, *theirs;

	FUNC3(FUNC11(&tree_id, "ae90f12eea699729ed24555e40b9fd669da12a12"));
	FUNC3(FUNC13(&tree, _repo, &tree_id));
	FUNC3(FUNC8(&index));
	FUNC3(FUNC8(&new_index));
	FUNC3(FUNC10(index, tree));
	FUNC3(FUNC10(new_index, tree));

	/* put some conflicts in only the old side, these should be removed */
	FUNC0(index, "orig_side-1.txt");
	FUNC0(index, "orig_side-2.txt");

	/* put some conflicts in both indexes, these should be unchanged */
	FUNC0(index, "both_sides-1.txt");
	FUNC0(new_index,  "both_sides-1.txt");
	FUNC0(index, "both_sides-2.txt");
	FUNC0(new_index,  "both_sides-2.txt");

	/* put some conflicts in the new index, these should be added */
	FUNC0(new_index, "new_side-1.txt");
	FUNC0(new_index, "new_side-2.txt");

	FUNC3(FUNC9(index, new_index));
	FUNC3(FUNC5(&conflict_iterator, index));

	FUNC3(FUNC6(
		&ancestor, &ours, &theirs, conflict_iterator));
	FUNC1("both_sides-1.txt", ancestor->path);
	FUNC1("both_sides-1.txt", ours->path);
	FUNC1("both_sides-1.txt", theirs->path);

	FUNC3(FUNC6(
		&ancestor, &ours, &theirs, conflict_iterator));
	FUNC1("both_sides-2.txt", ancestor->path);
	FUNC1("both_sides-2.txt", ours->path);
	FUNC1("both_sides-2.txt", theirs->path);

	FUNC3(FUNC6(
		&ancestor, &ours, &theirs, conflict_iterator));
	FUNC1("new_side-1.txt", ancestor->path);
	FUNC1("new_side-1.txt", ours->path);
	FUNC1("new_side-1.txt", theirs->path);

	FUNC3(FUNC6(
		&ancestor, &ours, &theirs, conflict_iterator));
	FUNC1("new_side-2.txt", ancestor->path);
	FUNC1("new_side-2.txt", ours->path);
	FUNC1("new_side-2.txt", theirs->path);


	FUNC2(GIT_ITEROVER, FUNC6(
		&ancestor, &ours, &theirs, conflict_iterator));

	FUNC4(conflict_iterator);

	FUNC12(tree);
	FUNC7(new_index);
	FUNC7(index);
}