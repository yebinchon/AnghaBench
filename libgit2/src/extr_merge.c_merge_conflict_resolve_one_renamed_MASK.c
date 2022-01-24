#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_8__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  resolved; int /*<<< orphan*/  staged; int /*<<< orphan*/  pool; } ;
typedef  TYPE_2__ git_merge_diff_list ;
struct TYPE_15__ {int /*<<< orphan*/  path; int /*<<< orphan*/  id; } ;
struct TYPE_12__ {int /*<<< orphan*/  id; } ;
struct TYPE_14__ {scalar_t__ our_status; scalar_t__ their_status; scalar_t__ type; TYPE_8__ their_entry; int /*<<< orphan*/  path; TYPE_8__ our_entry; TYPE_1__ ancestor_entry; } ;
typedef  TYPE_3__ git_merge_diff ;
typedef  TYPE_3__ git_index_entry ;

/* Variables and functions */
 scalar_t__ GIT_DELTA_RENAMED ; 
 scalar_t__ GIT_MERGE_DIFF_BOTH_RENAMED_1_TO_2 ; 
 scalar_t__ GIT_MERGE_DIFF_BOTH_RENAMED_2_TO_1 ; 
 scalar_t__ GIT_MERGE_DIFF_RENAMED_ADDED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_8__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,TYPE_8__*,int) ; 

__attribute__((used)) static int FUNC6(
	int *resolved,
	git_merge_diff_list *diff_list,
	const git_merge_diff *conflict)
{
	int ours_renamed, theirs_renamed;
	int ours_changed, theirs_changed;
	git_index_entry *merged;
	int error = 0;

	FUNC1(resolved && diff_list && conflict);

	*resolved = 0;

	if (!FUNC0(conflict->our_entry) ||
		!FUNC0(conflict->their_entry))
		return 0;

	ours_renamed = (conflict->our_status == GIT_DELTA_RENAMED);
	theirs_renamed = (conflict->their_status == GIT_DELTA_RENAMED);

	if (!ours_renamed && !theirs_renamed)
		return 0;

	/* Reject one file in a 2->1 conflict */
	if (conflict->type == GIT_MERGE_DIFF_BOTH_RENAMED_2_TO_1 ||
		conflict->type == GIT_MERGE_DIFF_BOTH_RENAMED_1_TO_2 ||
		conflict->type == GIT_MERGE_DIFF_RENAMED_ADDED)
		return 0;

	ours_changed = (FUNC2(&conflict->ancestor_entry.id, &conflict->our_entry.id) != 0);
	theirs_changed = (FUNC2(&conflict->ancestor_entry.id, &conflict->their_entry.id) != 0);

	/* if both are modified (and not to a common target) require a merge */
	if (ours_changed && theirs_changed &&
		FUNC2(&conflict->our_entry.id, &conflict->their_entry.id) != 0)
		return 0;

	if ((merged = FUNC3(&diff_list->pool, sizeof(git_index_entry))) == NULL)
		return -1;

	if (ours_changed)
		FUNC5(merged, &conflict->our_entry, sizeof(git_index_entry));
	else
		FUNC5(merged, &conflict->their_entry, sizeof(git_index_entry));

	if (ours_renamed)
		merged->path = conflict->our_entry.path;
	else
		merged->path = conflict->their_entry.path;

	*resolved = 1;

	FUNC4(&diff_list->staged, merged);
	FUNC4(&diff_list->resolved, (git_merge_diff *)conflict);

	return error;
}