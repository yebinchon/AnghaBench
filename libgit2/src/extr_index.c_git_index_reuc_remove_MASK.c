#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_index_reuc_entry ;
struct TYPE_3__ {int dirty; int /*<<< orphan*/  reuc; } ;
typedef  TYPE_1__ git_index ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(git_index *index, size_t position)
{
	int error;
	git_index_reuc_entry *reuc;

	FUNC0(FUNC2(&index->reuc));

	reuc = FUNC1(&index->reuc, position);
	error = FUNC3(&index->reuc, position);

	if (!error)
		FUNC4(reuc);

	index->dirty = 1;
	return error;
}