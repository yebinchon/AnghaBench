#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_pool ;
struct TYPE_6__ {int /*<<< orphan*/  pool; } ;
typedef  TYPE_1__ git_merge_diff_list ;
struct TYPE_7__ {void* their_status; void* our_status; int /*<<< orphan*/  their_entry; int /*<<< orphan*/  our_entry; int /*<<< orphan*/  ancestor_entry; } ;
typedef  TYPE_2__ git_merge_diff ;
typedef  int /*<<< orphan*/  git_index_entry ;

/* Variables and functions */
 size_t TREE_IDX_ANCESTOR ; 
 size_t TREE_IDX_OURS ; 
 size_t TREE_IDX_THEIRS ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 void* FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static git_merge_diff *FUNC3(
	git_merge_diff_list *diff_list,
	const git_index_entry **entries)
{
	git_merge_diff *conflict;
	git_pool *pool = &diff_list->pool;

	if ((conflict = FUNC0(pool, sizeof(git_merge_diff))) == NULL)
		return NULL;

	if (FUNC1(&conflict->ancestor_entry, pool, entries[TREE_IDX_ANCESTOR]) < 0 ||
		FUNC1(&conflict->our_entry, pool, entries[TREE_IDX_OURS]) < 0 ||
		FUNC1(&conflict->their_entry, pool, entries[TREE_IDX_THEIRS]) < 0)
		return NULL;

	conflict->our_status = FUNC2(
		entries[TREE_IDX_ANCESTOR], entries[TREE_IDX_OURS]);
	conflict->their_status = FUNC2(
		entries[TREE_IDX_ANCESTOR], entries[TREE_IDX_THEIRS]);

	return conflict;
}