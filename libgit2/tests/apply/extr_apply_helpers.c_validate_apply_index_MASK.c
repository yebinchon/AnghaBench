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
struct merge_index_entry {int dummy; } ;
struct iterator_compare_data {size_t member_1; int /*<<< orphan*/  cnt; int /*<<< orphan*/  idx; struct merge_index_entry* member_0; } ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_iterator ;
typedef  int /*<<< orphan*/  git_index ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct iterator_compare_data*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  iterator_compare ; 

void FUNC7(
	git_repository *repo,
	struct merge_index_entry *index_entries,
	size_t index_cnt)
{
	git_index *index;
	git_iterator *iterator;
	struct iterator_compare_data data = { index_entries, index_cnt };

	FUNC1(FUNC6(&index, repo));
	FUNC1(FUNC3(&iterator, repo, index, NULL));

	FUNC1(FUNC4(iterator, iterator_compare, &data));
	FUNC0(data.idx, data.cnt);

	FUNC5(iterator);
	FUNC2(index);
}