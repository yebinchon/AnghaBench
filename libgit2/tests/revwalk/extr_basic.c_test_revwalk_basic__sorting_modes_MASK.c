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
typedef  int /*<<< orphan*/  git_oid ;

/* Variables and functions */
 int GIT_SORT_REVERSE ; 
 int GIT_SORT_TIME ; 
 int GIT_SORT_TOPOLOGICAL ; 
 int /*<<< orphan*/  _walk ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  commit_head ; 
 int /*<<< orphan*/  commit_sorting_time ; 
 int /*<<< orphan*/  commit_sorting_time_reverse ; 
 int /*<<< orphan*/  commit_sorting_topo ; 
 int /*<<< orphan*/  commit_sorting_topo_reverse ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int) ; 

void FUNC4(void)
{
	git_oid id;

	FUNC2(NULL);

	FUNC1(&id, commit_head);

	FUNC0(FUNC3(_walk, &id, GIT_SORT_TIME, commit_sorting_time, 1));
	FUNC0(FUNC3(_walk, &id, GIT_SORT_TOPOLOGICAL, commit_sorting_topo, 2));
	FUNC0(FUNC3(_walk, &id, GIT_SORT_TIME | GIT_SORT_REVERSE, commit_sorting_time_reverse, 1));
	FUNC0(FUNC3(_walk, &id, GIT_SORT_TOPOLOGICAL | GIT_SORT_REVERSE, commit_sorting_topo_reverse, 2));
}