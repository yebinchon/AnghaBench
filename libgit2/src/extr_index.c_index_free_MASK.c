#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {struct TYPE_6__* index_file_path; int /*<<< orphan*/  deleted; int /*<<< orphan*/  reuc; int /*<<< orphan*/  names; int /*<<< orphan*/  entries; int /*<<< orphan*/  entries_map; int /*<<< orphan*/  readers; } ;
typedef  TYPE_1__ git_index ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(git_index *index)
{
	/* index iterators increment the refcount of the index, so if we
	 * get here then there should be no outstanding iterators.
	 */
	FUNC0(!FUNC3(&index->readers));

	FUNC5(index);
	FUNC4(index->entries_map);
	FUNC6(&index->entries);
	FUNC6(&index->names);
	FUNC6(&index->reuc);
	FUNC6(&index->deleted);

	FUNC1(index->index_file_path);

	FUNC2(index, sizeof(*index));
	FUNC1(index);
}