#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  pool; int /*<<< orphan*/  resolved; int /*<<< orphan*/  conflicts; int /*<<< orphan*/  staged; } ;
typedef  TYPE_1__ git_merge_diff_list ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(git_merge_diff_list *diff_list)
{
	if (!diff_list)
		return;

	FUNC2(&diff_list->staged);
	FUNC2(&diff_list->conflicts);
	FUNC2(&diff_list->resolved);
	FUNC1(&diff_list->pool);
	FUNC0(diff_list);
}